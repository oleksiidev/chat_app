import 'package:chat_app/allConstants/app_constants.dart';
import 'package:chat_app/allConstants/color_constants.dart';
import 'package:chat_app/main.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class FullPhotoPage extends StatelessWidget {
  final String url;


  const FullPhotoPage({Key? key, required this.url}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isWhite ? Colors.white : Colors.black,
      appBar: AppBar(backgroundColor: isWhite ? Colors.white : Colors.grey[900],
      iconTheme: IconThemeData(
        color: ColorConstants.primaryColor,
      ),
        title: Text(
          AppConstants.fullPhotoTitle,
          style: TextStyle(color: ColorConstants.primaryColor),
        ),
        centerTitle: true,
      ),
      body: Container(child: PhotoView(
          imageProvider: NetworkImage(url),
        ),
      ),
    );
  }
}
