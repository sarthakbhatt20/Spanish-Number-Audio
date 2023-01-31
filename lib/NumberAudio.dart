import 'package:flutter/material.dart';

class NumberAudio {
  MaterialColor? buttonColor;
  String audioUri = "";
  String buttonName = "";

  NumberAudio(MaterialColor buttonColor, String audioUri, String buttonName) {
    this.buttonColor = buttonColor;
    this.audioUri = audioUri;
    this.buttonName = buttonName;
  }
}
