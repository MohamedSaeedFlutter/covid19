import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareLogic{
  static void onShare(
      BuildContext context ,String text ,{List<String> imagePaths})
  async {
    if (imagePaths != null) {
      await Share.shareFiles(imagePaths,
        text: text,
        subject: "Covid 19",
      );
    } else {
      await Share.share(text,
        subject: "Covid 19",
      );
    }
  }

}