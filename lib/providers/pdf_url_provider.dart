import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfUrlProvider extends ChangeNotifier {
  final PdfViewerController pdfViewerController = PdfViewerController();

  String _pdfUrl = 'https://icseindia.org/document/sample.pdf';
  // 'https://www.ethiopianorthodox.org/amharic/yezemametsheft/14%20kidasewoch/01%20sereat%20kidasse.pdf';

  String get pdfUrl => _pdfUrl;

  set pdfUrl(String url) {
    _pdfUrl = url;
    notifyListeners();
  }

  setPageNumber(int value) {
    if (value > 0) {
      pdfViewerController.jumpToPage(value);
    }
  }

  //  Provider.of<PdfUrlProvider>(context, listen: false).setPageNumber(5);
}
