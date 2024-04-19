import 'package:dezigo1/sign_in.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return MediaQuery(
          child: child!,
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        );
        runApp(MyApp());
      },
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: sign_in(),
    );
  }
}
