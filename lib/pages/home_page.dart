import 'package:flutter/material.dart';
import 'package:kpersonal/pages/options_page.dart';
import 'package:kpersonal/pages/task_module_page.dart';
import 'package:kpersonal/widgets/regular_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              RegularButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TaskModulePage(),
                    ),
                  );
                },
                text: "Task Module",
              ),
              RegularButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OptionsPage(),
                      ),
                    );
                  },
                  text: "Options"),
              RegularButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: "Exit",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
