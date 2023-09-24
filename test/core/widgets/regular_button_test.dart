import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:kpersonal/core/widgets/regular_button.dart';

void main() {
  var pressed = false;

  final testingWidget = RegularButton(
    text: 'test',
    onPressed: () => pressed = true,
  );

  final widget = StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
      return MaterialApp(
        home: Material(
          child: testingWidget,
        ),
      );
    },
  );

  testWidgets('Testing if RegularButton extends OutlinedButton',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      widget,
    );

    final extendsOutlinedButton = find.bySubtype<OutlinedButton>();

    expect(extendsOutlinedButton, findsOneWidget);
  });

  testWidgets('Testing regular button text name', (WidgetTester tester) async {
    await tester.pumpWidget(
      widget,
    );

    final textFinder = find.text('test');

    expect(textFinder, findsOneWidget);
  });

  testWidgets('Testing regular button onPressed', (WidgetTester tester) async {
    await tester.pumpWidget(
      widget,
    );

    final regularButton = find.byWidget(testingWidget);

    expect(regularButton, findsOneWidget);
    await tester.tap(regularButton);
    expect(pressed, isTrue);
  });
}
