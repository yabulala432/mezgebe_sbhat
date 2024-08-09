import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/components/player/neumorphic_container.dart';
import 'package:mezgebe_sbhat/providers/pdf_url_provider.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfCard extends StatefulWidget {
  const PdfCard({super.key});

  @override
  State<PdfCard> createState() => _PdfCardState();
}

class _PdfCardState extends State<PdfCard> {
  Future<File?>? _pdfDownloadFuture;
  bool _loadFailed = false;

  @override
  void initState() {
    super.initState();
    _checkFileExists();
  }

  _checkFileExists() async {
    final pdfProvider = Provider.of<PdfUrlProvider>(context, listen: false);
    _pdfDownloadFuture = pdfProvider.checkFileExists();
  }

  void _downloadPdf() {
    final pdfProvider = Provider.of<PdfUrlProvider>(context, listen: false);
    setState(() {
      _pdfDownloadFuture = pdfProvider.downloadPdf();
      _loadFailed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme themeProvider =
        Provider.of<ThemeProvider>(context).themeData.colorScheme;
    final pdfProvider = Provider.of<PdfUrlProvider>(context);

    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        FutureBuilder<File?>(
          future: _pdfDownloadFuture,
          builder: (context, snapshot) {
            return NeumorphicContainer(
              border: Border.all(
                color: themeProvider.primary,
                width: 2.0,
              ),
              color: Colors.transparent,
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: screenHeight * 0.59,
                ),
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(38),
                  child: _buildContent(snapshot, pdfProvider, themeProvider),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildContent(AsyncSnapshot<File?> snapshot,
      PdfUrlProvider pdfProvider, ColorScheme colorScheme) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              value: pdfProvider.getDownloadProgress(
                  fileId: pdfProvider.filePdf.name),
              color: colorScheme.primary,
            ),
            Text(
              '${(pdfProvider.getDownloadProgress(fileId: pdfProvider.filePdf.name) * 100).round()}%',
              style: TextStyle(
                color: colorScheme.primary,
              ),
            ),
          ],
        ),
      );
    } else if (snapshot.hasError || _loadFailed) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Error loading PDF'),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(colorScheme.primary),
            ),
            onPressed: _downloadPdf,
            child: Text(
              'Retry',
              style: TextStyle(
                color: colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      );
    } else if (snapshot.hasData && snapshot.data != null) {
      return SfPdfViewer.file(
        snapshot.data!,
        controller: pdfProvider.pdfViewerController,
        onDocumentLoadFailed: (details) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Failed to load PDF: ${details.error}'),
            ),
          );
          setState(() {
            _loadFailed = true;
          });
        },
      );
    } //else if the snapshot has no data
    else if (snapshot.data == null) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('No PDF Found.\nPlease download PDF'),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(colorScheme.primary),
            ),
            onPressed: _downloadPdf,
            child: Text(
              'Download PDF',
              style: TextStyle(
                color: colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('No PDF downloaded'),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(colorScheme.primary),
            ),
            onPressed: _downloadPdf,
            child: Text(
              'Download PDF',
              style: TextStyle(
                color: colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      );
    }
  }
}
