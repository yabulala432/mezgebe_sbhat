import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/models/pdf.dart';
import 'package:path_provider/path_provider.dart';
import 'package:retry/retry.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfUrlProvider extends ChangeNotifier {
  final PdfViewerController pdfViewerController = PdfViewerController();
  final Map<String, double> _pdfDownloadProgress = {};
  final int _maxDownloadProgressEntries = 8;
  final Pdf filePdf;

  bool isDownloading = false;
  bool downloadFailed = false;

  PdfUrlProvider({required this.filePdf}) {
    print('url is ${filePdf.url} and file name is ${filePdf.name}');
  }

  double getDownloadProgress({required String fileId}) =>
      _pdfDownloadProgress[fileId] ?? 0.0;

  void setDownloadProgress(String fileId, double value) {
    _pdfDownloadProgress[fileId] = value;
    notifyListeners();
    // if downloadProgress is full then clear it
    if (_pdfDownloadProgress.length >= _maxDownloadProgressEntries) {
      clearDownloadProgress();
    }
  }

  void clearDownloadProgress() {
    _pdfDownloadProgress.removeWhere((key, value) => value == 1.0);
    notifyListeners();
  }

  Future<File?> downloadPdf() async {
    try {
      isDownloading = true;

      Directory supportDirectory = await getApplicationSupportDirectory();
      String path = '${supportDirectory.path}/pdfs';

      final directory = Directory(path);
      if (!await directory.exists()) {
        await directory.create(recursive: true);
      }

      String url = filePdf.url;
      String fileName = filePdf.name;

      var file = File('${directory.path}/$fileName.pdf');
      if (file.existsSync()) {
        print('************ file exists *************');
        print(file.path);
        isDownloading = false;
        downloadFailed = false;
        return file;
      }

      print('************ recieving *************');

      try {
        final Dio dio = Dio();
        dio.options.connectTimeout = const Duration(seconds: 5);
        await retry(
          () => dio.download(
            url,
            file.path,
            options: Options(responseType: ResponseType.bytes),
            onReceiveProgress: (received, total) {
              if (total != -1) {
                setDownloadProgress(fileName, received / total);
              }
            },
          ),
          maxAttempts: 5,
        );
      } catch (e) {}
/** 
      await Dio().download(
        url,
        file.path,
        options: Options(responseType: ResponseType.bytes),
        onReceiveProgress: (received, total) {
          if (total != -1) {
            setDownloadProgress(fileName, received / total);
          }
        },
      );
 */
      isDownloading = false;
      downloadFailed = false;
      print(file);
      return file;
    } catch (e) {
      print(e);
      downloadFailed = true;
      isDownloading = false;
    }
    return null;
  }

  setPageNumber(int value) {
    if (value > 0) {
      pdfViewerController.jumpToPage(value);
    }
  }
}
