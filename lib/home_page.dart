import 'package:flutter/material.dart';
import 'package:kpersonal/task_module_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              OutlinedButton(
                style: outlinedButtonStyle,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TaskModulePage(),
                    ),
                  );
                },
                child: const Text(
                  "Task Module",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
              OutlinedButton(
                style: outlinedButtonStyle,
                onPressed: () {
                  print("Options");
                },
                child: const Text(
                  "Options",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
              OutlinedButton(
                style: outlinedButtonStyle,
                onPressed: () {},
                child: const Text(
                  "Exit",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
