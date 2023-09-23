import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kpersonal/widgets/regular_button.dart';

class OptionsPage extends StatelessWidget {
  const OptionsPage({super.key});

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
                'Options',
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
