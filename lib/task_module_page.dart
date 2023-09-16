import 'package:flutter/material.dart';
import 'package:kpersonal/home_page.dart';

class TaskModulePage extends StatelessWidget {
  const TaskModulePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlinedButtonStyle = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered))
          return const Color.fromARGB(70, 22, 167, 27);
        if (states.contains(MaterialState.pressed))
          return Color.fromARGB(70, 51, 22, 167);
        return null; // Defer to the widget's default.
      }),
    );
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          style: outlinedButtonStyle,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            "Home Page",
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
      ),
    );
  }
}
