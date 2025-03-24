import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

class MediaServices {
  MediaServices._privateConstructor();

  static final MediaServices _instance = MediaServices._privateConstructor();

  static MediaServices get instance => _instance;

  static final ImagePicker _imagePicker = ImagePicker();



  static Future<XFile?> pickImageFromCamera() async {
    try {
      return await _imagePicker.pickImage(source: ImageSource.camera);
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }



  static Future<XFile?> pickImageFromGallery() async {
    try {
      return await _imagePicker.pickImage(source: ImageSource.gallery);
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
