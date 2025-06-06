import 'package:flutter/material.dart';

Future<dynamic> navigatePush(BuildContext context, Widget view) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) => view));
}
Future<dynamic> navigatePushReplace(BuildContext context, Widget view) {
  return Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => view));
}
