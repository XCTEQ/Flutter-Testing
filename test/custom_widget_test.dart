
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_testing/main.dart';

void main() {
testWidgets('Create and test my own widget', (WidgetTester tester) async {
    var sliderKey = UniqueKey();
    var value = 0.0;

    // Tells the tester to build a UI based on the widget tree passed to it
    await tester.pumpWidget(
      StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return MaterialApp(
            home: Material(
              child: Center(
                child: Slider(
                  key: sliderKey,
                  value: value,
                  onChanged: (double newValue) {
                    setState(() {
                      value = newValue;
                    });
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
    expect(value, equals(0.0));

    // Taps on the widget found by key
    await tester.tap(find.byKey(sliderKey));

    // Verifies that the widget updated the value correctly
    expect(value, equals(0.5));
   });

// Second Test: Widget Class below the test 

  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    // Create the Widget tell the tester to build it
    await tester.pumpWidget(MyWidget(title: 'T', message: 'M'));

    // Create our Finders
    final titleFinder = find.text('T');
    final messageFinder = find.text('M');

    // Use the `findsOneWidget` matcher provided by flutter_test to verify our
    // Text Widgets appear exactly once in the Widget tree
    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
   });

}

class MyWidget extends StatelessWidget {
  final String title;
  final String message;

  const MyWidget({
    Key key,
    @required this.title,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text(message),
        ),
      ),
    );
  }
}