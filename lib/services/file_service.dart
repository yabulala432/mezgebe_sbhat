import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:path_provider/path_provider.dart';
import 'package:retry/retry.dart';

class FileService extends ChangeNotifier {
  final Map<String, double> _downloadProgress = {};
  final int _maxDownloadProgressEntries = 20; // Define a threshold

  double getDownloadProgress({required String fileId}) =>
      _downloadProgress[fileId] ?? 0.0;

  void setDownloadProgress(String fileId, double value) {
    _downloadProgress[fileId] = value;
    notifyListeners();
    // if downloadProgress is full then clear it
    if (_downloadProgress.length >= _maxDownloadProgressEntries) {
      clearDownloadProgress();
    }
  }

  void clearDownloadProgress() {
    _downloadProgress.removeWhere((key, value) => value == 1.0);
    notifyListeners();
  }

  Future<bool> deleteFile({
    required String fileName,
    required String folderName,
  }) async {
    final appStorage = await getPath();

    File file = File('$appStorage/$folderName/$fileName');

    // print('${file.path} is the path to delete the file bro ');

    if (await doesFileExist(fileName: fileName, folderName: folderName)) {
      file.deleteSync();
      return true;
    }

    return false;
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
    required String folderName,
  }) async {
    final typeOfFile = url.split('/').last.split('.').last;

    String fileType = typeOfFile;

    if (typeOfFile != 'wma') {
      fileType = 'mp3';
    }

    final wmaFileName = '${fileName.replaceAll(' ', '_')}.wma';
    final filteredName =
        removeExtraExtensions(fileName.replaceAll(' ', '_'), fileType);

    final appStorage = await getPath();
    final filePath = '$appStorage/$folderName';

    // Ensure the directory exists
    final directory = Directory(filePath);
    if (!await directory.exists()) {
      await directory.create(recursive: true);
    }

    final file = File('$filePath/$filteredName');

    // check if the file already exists
    if (await doesFileExist(fileName: file.path, folderName: folderName)) {
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
        await convertWmaToMp3(fileName: filteredName, folderName: folderName);
        final wmaFile = File('$appStorage/$wmaFileName');
        if (await wmaFile.exists()) {
          await wmaFile.delete();
        }
      }
      return file;
    } catch (e) {
      print('line 68 fileService.dart error downloading file: $e');
      rethrow;
    }
  }

  Future<void> convertWmaToMp3(
      {required String fileName, required String folderName}) async {
    final file = await getFile(fileName: fileName, folderName: folderName);
    final newFile = File(file!.path.replaceAll('wma', 'mp3'));

    final FlutterFFmpeg flutterFFmpeg = FlutterFFmpeg();

    await flutterFFmpeg
        .execute('-i ${file!.path} ${newFile.path}')
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

  Future<bool> doesFileExist({
    required String fileName,
    required String folderName,
  }) async {
    String path = await getPath();
    bool value = File('$path/$folderName/$fileName').existsSync();
    return value;
  }

  Future<File?> getFile({
    required String fileName,
    required String folderName,
  }) async {
    final appStoragePath = await getPath();
    final file = File('$appStoragePath/$folderName/$fileName');
    return file;
  }

  Future<String> getPath() async {
    final appStorage = await getApplicationSupportDirectory();
    return appStorage.path;
  }
}
