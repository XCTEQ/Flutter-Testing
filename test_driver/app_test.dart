// Imports the Flutter Driver API
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Home Screen Test', () {
    FlutterDriver driver;

    setUpAll(() async {
      // Connects to the app
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        // Closes the connection
        driver.close();
      }
    });

    test('verify the text on home screen', () async {

      SerializableFinder message = find.text("You have pushed the button this many times:");
      await driver.waitFor(message); 
      expect(await driver.getText(message), "You have pushed the button this many times:");         
    });
  });
}