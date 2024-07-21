import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:path_provider/path_provider.dart';

class FileService {
  FileService() {
    getPath();
  }
  Future<File?> downloadFile({
    required String url,
    required String fileName,
  }) async {
    print('********************** downloading file **********************');
    final typeOfFile = url.split('/').last.split('.').last;

    String fileType = typeOfFile;

    if (typeOfFile != 'wma') {
      fileType = 'mp3';
    }

    final wmaFilePath = '${fileName.replaceAll(' ', '_')}.wma';
    final filteredName = '${fileName.replaceAll(' ', '_')}.$fileType';

    print('filtered name is $filteredName');

    final appStorage = await getPath();
    print('$appStorage is the path');

    final file = File('$appStorage/$filteredName');

    // check if the file already exists
    if (await doesFileExist(fileName: file.path)) {
      return file;
    }

    try {
      final response = await Dio().get(
        url,
        options: Options(
          responseType: ResponseType.bytes,
        ),
      );
      final raf = file.openSync(
        mode: FileMode.write,
      );
      raf.writeFromSync(response.data);
      await raf.close();

      // if the file type is .wma convert it to .mp3
      if (typeOfFile == 'wma') {
        print(
            '*************** wma detected. converting to mp3 ***********************');
        await convertWmaToMp3(filteredName);
        // delete the wma file

        final wmaFile = File('$appStorage/$wmaFilePath');
        if (await wmaFile.exists()) {
          await wmaFile.delete();
        }
      }

      return file;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<bool> doesFileExist({required String fileName}) async {
    String path = await getPath();
    // print('$path/$fileName is the directory to check');
    bool value = File('$path/$fileName').existsSync();

    // print('$value,=== exist, value !!!');
    return value;
  }

  Future<File?> getFile(String fileName) async {
    final appStorage = await getApplicationDocumentsDirectory();
    final file = File('${appStorage.path}/$fileName');
    return file;
  }

  Future<String> getPath() async {
    final appStorage = await getApplicationSupportDirectory();
    return appStorage.path;
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
}
