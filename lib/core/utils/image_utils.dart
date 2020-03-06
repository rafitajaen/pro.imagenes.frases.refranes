import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:save_in_gallery/save_in_gallery.dart';

import '../../generated/l10n.dart';
import '../../modules/arae_dialogs/utils/arae_dialogs.dart';

class ImageUtils {
  static Future<void> saveInGallery(
      BuildContext context, GlobalKey globalKey) async {
    var pngBytes = await _capturePng(globalKey);

    ImageSaver().saveImages(
        imageBytes: [pngBytes],
        directoryName: S.of(context).appDirectoryName).then(
      (onValue) {
        if (onValue) {
          AraeDialogs.imageSaveSuccesfully(context);
        } else {
          AraeDialogs.imageSaveError(context);
        }
      },
    );
  }

  static Future<Uint8List> _capturePng(GlobalKey globalKey) async {
    RenderRepaintBoundary boundary =
        globalKey.currentContext.findRenderObject();

    var image = await boundary.toImage(pixelRatio: 6.0);
    var byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    return byteData.buffer.asUint8List();
  }
}
