import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';

class PhotoRepo{

  final FirebaseStorage _firebaseStorage;
  static const String contentType = "image/png";

  PhotoRepo({
    FirebaseStorage? firebaseStorage
  }) : _firebaseStorage = firebaseStorage ?? FirebaseStorage.instance;


  Future<String> uploadStyleImage(Uint8List imageData, String fileName) async {
    final storageRef = _firebaseStorage
        .ref("/styles")
        .child(fileName);
    try {
      final TaskSnapshot task = await storageRef.putData(
        imageData, 
        SettableMetadata(contentType: contentType)
      );

      final String downloadURL = await task.ref.getDownloadURL();
      return downloadURL;
    } 
    on SocketException{
      throw Exception("Make sure you are connected to the Internet");
    }
    catch(error, stacktrace) {
      if (kDebugMode) {
        print(stacktrace);
      }
      rethrow;
    }
  }
}