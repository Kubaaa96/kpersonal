import 'package:flutter/material.dart';

class RegularButton extends OutlinedButton {
  final String text;
  const RegularButton({
    super.key,
    required this.text,
    super.child,
    required super.onPressed,
  });

  @override
  Widget? get child => Text(
        text,
        style: const TextStyle(
          fontSize: 28,
        ),
      );

  @override
  ButtonStyle? get style => ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return const Color.fromARGB(70, 22, 167, 27);
          }
          if (states.contains(MaterialState.pressed)) {
            return const Color.fromARGB(70, 51, 22, 167);
          }
          return null; // Defer to the widget's default.
        }),
      );
}
