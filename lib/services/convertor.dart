import 'dart:io';

import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:path_provider/path_provider.dart';

Future<void> convertWmaToMp3Second() async {
  const wmaPath =
      '/storage/emulated/0/Android/data/com.example.provider_tutorial/files/wetebarek.wma';
  const mp3Path =
      '/storage/emulated/0/Android/data/com.example.provider_tutorial/files/wetebarek.mp3';

  final wmaFile = File(wmaPath);

  if (!wmaFile.existsSync()) {
    print(
        '******************************File does not exist********************************');
    return;
  }

  final FlutterFFmpeg flutterFFmpeg = FlutterFFmpeg();

  // Execute the command to convert .wma to .mp3
  await flutterFFmpeg.execute('-i $wmaPath $mp3Path').then((returnCode) {
    if (returnCode == 0) {
      print('Conversion successful');
    } else {
      print('Conversion failed with return code: $returnCode');
    }
  });

  // then save the file to the documents directory
  final file = File(mp3Path);
  final newPath =
      '${(await getApplicationDocumentsDirectory()).path}/wetebarek.mp3';
  await file.copy(newPath);
  print('File saved to: $newPath');

  // Delete the original file
  await wmaFile.delete();

  print('Original file deleted');
}
