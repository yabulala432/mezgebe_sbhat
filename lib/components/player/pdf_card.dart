import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/components/player/neumorphic_container.dart';
import 'package:mezgebe_sbhat/providers/pdf_url_provider.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:dio/dio.dart';

class PdfCardContainer extends StatefulWidget {
  const PdfCardContainer({super.key});

  @override
  State<PdfCardContainer> createState() => _PdfCardContainerState();
}

class _PdfCardContainerState extends State<PdfCardContainer> {
  // final PdfViewerController _pdfViewerController = PdfViewerController();

  bool _loadFailed = false;
  bool _isLoading = true;
  double _progress = 0.0;
  File? file;

  @override
  void initState() {
    super.initState();
    _downloadPdf();
  }

  Future<void> _downloadPdf() async {
    final pdfUrlProvider = Provider.of<PdfUrlProvider>(context, listen: false);
    final url = pdfUrlProvider.pdfUrl;

    try {
      Directory supportDirectory = await getApplicationSupportDirectory();
      String path = '${supportDirectory.path}/kdase3';

      file = File(path);
      if (file!.existsSync()) {
        setState(() {
          _isLoading = false;
        });
        return;
      }

      await Dio().download(
        url,
        path,
        options: Options(responseType: ResponseType.stream),
        onReceiveProgress: (received, total) {
          if (total != -1) {
            setState(() {
              _progress = received / total;
            });
          }
        },
      );

      file = File(path);

      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _loadFailed = true;
        _isLoading = false;
      });
      showErrorMessage(e);
    }
  }

  void showErrorMessage(error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Failed to download PDF: $error')),
    );
  }

  void _reloadPdf() {
    setState(() {
      _loadFailed = false;
      _isLoading = true;
      _progress = 0.0;
    });
    _downloadPdf();
  }

  @override
  Widget build(BuildContext context) {
    final pdfProvider = Provider.of<PdfUrlProvider>(context, listen: false);
    return NeumorphicContainer(
      border: Border.all(
        color:
            Provider.of<ThemeProvider>(context).themeData.colorScheme.primary,
        width: 2.0,
      ),
      color: Colors.transparent,
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 450.0,
          maxHeight: 500.0,
          maxWidth: 500,
        ),
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(38),
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              height: 500,
              width: double.infinity,
              child: Stack(
                children: [
                  _loadFailed
                      ? Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Failed to load PDF.'),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: _reloadPdf,
                                child: const Text('Retry'),
                              ),
                            ],
                          ),
                        )
                      : _isLoading
                          ? Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircularProgressIndicator(value: _progress),
                                  const SizedBox(height: 10),
                                  Text(
                                      '${(_progress * 100).toStringAsFixed(0)}%'),
                                ],
                              ),
                            )
                          : file != null
                              ? SfPdfViewer.file(
                                  file!,
                                  controller: pdfProvider.pdfViewerController,
                                  initialPageNumber: 4,
                                  onDocumentLoadFailed: (details) {
                                    setState(() {
                                      _loadFailed = true;
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                'Failed to load PDF: ${details.error}')));
                                  },
                                )
                              : Container(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
