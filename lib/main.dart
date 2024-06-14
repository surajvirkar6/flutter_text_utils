import 'package:flutter/material.dart';
import 'package:myapp/text_utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Text Utils", home: TextUtils());
  }
}
