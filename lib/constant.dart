import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

var blueColor = HexColor('#0D6EFD');
var darkBlueColor = HexColor('#1483C2');
var lightSupTextColor = HexColor('#707B81');
var textFormFieldColor = HexColor('#F7F7F9');
var scaffoldGreyBackGround = HexColor('#f7f7f9');

void myPushReplacmentNavigator(
    {required BuildContext context, required Widget destination}) {
  Navigator.pushReplacement(
    context,
    CupertinoPageRoute(
      builder: (context) => destination,
    ),
  );
}

void myPushNavigator(
    {required BuildContext context, required Widget destination}) {
  Navigator.push(
    context,
    CupertinoPageRoute(
      builder: (context) => destination,
    ),
  );
}

void myPopNavigator({required BuildContext context}) {
  Navigator.pop(
    context,
  );
}
