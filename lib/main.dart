import 'package:flutter/material.dart';

import 'package:kpersonal/features/core/kpersonal_router.dart';

void main() {
  runApp(const KPersonalApp());
}

class KPersonalApp extends StatelessWidget {
  const KPersonalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: KPersonalRouter(),
    );
  }
}
