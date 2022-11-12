import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

showToast(String msg) {
  Fluttertoast.showToast(msg: msg);
}
