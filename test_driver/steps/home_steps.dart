import 'package:flutter_gherkin/src/flutter/flutter_world.dart';
import 'package:flutter_gherkin/src/flutter/utils/driver_utils.dart';
import 'package:flutter_gherkin/src/gherkin/steps/given.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';

/// 
///
/// Examples:
///
///   `Given test has launched`
class GivenTestLaunchedStep extends Given1<String> {
  @override
  Future<void> executeStep(String wellKnownUsername) async {
    await FlutterDriver.connect();
  }
  @override
  RegExp get pattern => RegExp(r"(test|uitest) has launched");
}

class ThenExpectCounterStep extends Then1<String> {
  @override
  Future<void> executeStep(String counterText) async {
    // await FlutterDriverUtils.getText("You have pushed the button this many times:");        
  }

  @override
  RegExp get pattern => RegExp(r"I expect {string} text");
}