import 'package:flutter/material.dart';

import 'package:count_app_init/src/page/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Count App',
      home: HomePage(),
    );
  }
}