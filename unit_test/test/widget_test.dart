import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/main.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Input is printed on screen', (WidgetTester tester) async {

    await tester.pumpWidget(MyApp());

    expect(find.byType(RaisedButton), findsOneWidget);

    expect(find.byKey(Key('textfield')), findsOneWidget);
    await tester.pump();
    await tester.enterText(find.byType(TextField), 'The test input.');
    await tester.pump();

    expect(find.text('The test input.'), findsOneWidget);
  });
}