// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:flip_card/flip_card.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class FlipCardContainer extends StatelessWidget {
  final GlobalKey<SfPdfViewerState> pdfViewerKey = GlobalKey();
  final PdfViewerController _pdfViewerController = PdfViewerController();

  FlipCardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 450.0,
        maxHeight: 500.0,
        maxWidth: 500,
      ),
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // hide the overflow
            ),
            height: 500,
            width: double.infinity,
            child: SfPdfViewer.network(
              'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
              key: pdfViewerKey,
              controller: _pdfViewerController,
            ),
          ),
        ),
      ),
    );
  }
}

    // return FlipCard(
    //   fill: Fill.fillBack,
    //   direction: FlipDirection.HORIZONTAL, // default
    //   side: CardSide.FRONT,
    //   front: Container(
    //     constraints: BoxConstraints(
    //       minHeight: 450.0,
    //       maxHeight: 500.0,
    //       maxWidth: 500,
    //     ),
    //     width: double.infinity,
    //     child: ClipRRect(
    //       borderRadius: BorderRadius.circular(10),
    //       child: Image(
    //         image: AssetImage(frontImagePath),
    //         fit: BoxFit.fill,
    //       ),
    //     ),
    //   ),
    //   back: ClipRRect(
    //     borderRadius: BorderRadius.circular(10),
    //     child: Image(
    //       image: AssetImage(backImagePath),
    //       fit: BoxFit.fill,
    //     ),
    //   ),
    // );
  