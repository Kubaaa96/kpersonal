import 'package:flutter/material.dart';

import 'package:kpersonal/pages/home_page.dart';

void main() {
  runApp(const KPersonalApp());
}

class KPersonalApp extends StatelessWidget {
  const KPersonalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "KPersonal App",
      home: HomePage(),
    );
  }
}
