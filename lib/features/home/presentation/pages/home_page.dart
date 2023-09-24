import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:kpersonal/core/widgets/regular_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RegularButton(
                onPressed: () => context.go('/task_module'),
                text: 'Task Module',
              ),
              RegularButton(
                onPressed: () => context.go('/options'),
                text: 'Options',
              ),
              RegularButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: 'Exit',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
