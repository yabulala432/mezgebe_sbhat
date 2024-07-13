import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

class FileService {
  FileService() {
    getPath();
  }
  Future<File?> downloadFile({
    required String url,
    required String fileName,
    required String fileType,
  }) async {
    final filteredName = '${fileName.replaceAll(' ', '_')}.$fileType';
    final appStorage = await getPath();
    print('$appStorage is the path');
    //await getApplicationDocumentsDirectory();

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
}
