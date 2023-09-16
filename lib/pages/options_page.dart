import 'package:flutter/material.dart';
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
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Options",
              ),
              RegularButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: "Home Page",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
