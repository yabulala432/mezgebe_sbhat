import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:path_provider/path_provider.dart';
import 'package:retry/retry.dart';

class FileService extends ChangeNotifier {
  final Map<String, double> _downloadProgress = {};

  double getDownloadProgress({required String fileId}) =>
      _downloadProgress[fileId] ?? 0.0;

  void setDownloadProgress(String fileId, double value) {
    // print('download progress of $fileId is $value');
    _downloadProgress[fileId] = value;
    notifyListeners(); // Notify all listeners of change.
  }

  String removeExtraExtensions(String filename, String extension) {
    List<String> parts = filename.split('.');
    String baseName = parts.first;
    return '$baseName.$extension';
  }

  Future<File?> downloadFile({
    required String url,
    required String fileName,
    required String fileId,
  }) async {
    final typeOfFile = url.split('/').last.split('.').last;

    String fileType = typeOfFile;

    if (typeOfFile != 'wma') {
      fileType = 'mp3';
    }

    final wmaFileName = '${fileName.replaceAll(' ', '_')}.wma';
    final filteredName =
        removeExtraExtensions(fileName.replaceAll(' ', '_'), fileType);

    print('filtered name is $filteredName');

    final appStorage = await getPath();

    final file = File('$appStorage/$filteredName');

    // check if the file already exists
    if (await doesFileExist(fileName: file.path)) {
      return file;
    }

    try {
      final dio = Dio();
      dio.options.connectTimeout = const Duration(seconds: 5);

      final response = await retry(
        () => dio.get(
          url,
          options: Options(
            responseType: ResponseType.bytes,
          ),
          onReceiveProgress: (count, total) {
            if (total != -1) {
              setDownloadProgress(fileId, count / total);
            }
          },
        ),
        // retryIf: (e) =>
        //     e is DioException && e.type == DioExceptionType.connectionTimeout,
        maxAttempts: 5,
      );
      final raf = file.openSync(
        mode: FileMode.write,
      );
      raf.writeFromSync(response.data);
      await raf.close();

      if (typeOfFile == 'wma') {
        await convertWmaToMp3(filteredName);
        final wmaFile = File('$appStorage/$wmaFileName');
        if (await wmaFile.exists()) {
          await wmaFile.delete();
        }
      }

      return file;
    } catch (e) {
      print('line 68 fileService.dart error downloading file: $e');

      // return null;
      rethrow;
    }
  }

  Future<void> convertWmaToMp3(String filePath) async {
    final appStorage = await getPath();
    final file = File('$appStorage/$filePath');
    final newFile = File('$appStorage/${filePath.replaceAll('wma', 'mp3')}');

    final FlutterFFmpeg flutterFFmpeg = FlutterFFmpeg();

    await flutterFFmpeg
        .execute('-i ${file.path} ${newFile.path}')
        .then((returnCode) {
      if (returnCode == 0) {
        print('Conversion successful');
      } else {
        print('Conversion failed with return code: $returnCode');
      }
    }).catchError((error) {
      print('Error: $error');
    });
  }

  Future<bool> doesFileExist({required String fileName}) async {
    String path = await getPath();
    bool value = File('$path/$fileName').existsSync();
    return value;
  }

  Future<File?> getFile(String fileName) async {
    final appStoragePath = await getPath();
    final file = File('$appStoragePath/$fileName');
    return file;
  }

  Future<String> getPath() async {
    final appStorage = await getApplicationSupportDirectory();
    return appStorage.path;
  }
}
