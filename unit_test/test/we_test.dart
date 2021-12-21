import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/we.dart';

void main() { 
  test("text string should change", () {

    final weTest = WeTest();

    weTest.populateText(2, 3);

    expect(weTest.text, "Hey, I am getting the number: 5");
  });
}