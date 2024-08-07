import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mezgebe_sbhat/components/player/neumorphic_container.dart';
import 'package:mezgebe_sbhat/providers/pdf_url_provider.dart';
import 'package:mezgebe_sbhat/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfCardContainer extends StatefulWidget {
  const PdfCardContainer({super.key});

  @override
  State<PdfCardContainer> createState() => _PdfCardContainerState();
}

class _PdfCardContainerState extends State<PdfCardContainer> {
  late Future<File?> _pdfDownloadFuture;

  @override
  void initState() {
    super.initState();
    final pdfProvider = Provider.of<PdfUrlProvider>(context, listen: false);
    _pdfDownloadFuture = pdfProvider.downloadPdf();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme themeProvider =
        Provider.of<ThemeProvider>(context).themeData.colorScheme;
    final pdfProvider = Provider.of<PdfUrlProvider>(context);

    final screenHeight = MediaQuery.of(context).size.height;

    return FutureBuilder<File?>(
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
    } else if (snapshot.hasError) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Error loading PDF'),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  colorScheme.primary as WidgetStateProperty<Color>,
            ),
            onPressed: () {
              setState(() {
                _pdfDownloadFuture = pdfProvider.downloadPdf();
              });
            },
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
              SnackBar(content: Text('Failed to load PDF: ${details.error}')));
        },
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Error loading PDF'),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(colorScheme.primary),
            ),
            onPressed: () {
              setState(() {
                _pdfDownloadFuture = pdfProvider.downloadPdf();
              });
            },
            child: Text(
              'Retry',
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

double formatProgress(double value) {
  // Ensure the value is between 0 and 1
  double clampedValue = value.clamp(0.0, 1.0);

  // Round to two decimal places
  double roundedValue = double.parse(clampedValue.toStringAsFixed(2));

  return roundedValue;
}
