import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:kpersonal/widgets/regular_button.dart';

class TaskModulePage extends StatelessWidget {
  const TaskModulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Task Module',
              ),
              RegularButton(
                onPressed: () => context.go('/'),
                text: 'Home Page',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
