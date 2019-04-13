import 'dart:async';
import 'package:glob/glob.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'steps/home_steps.dart';
import 'hooks/hook_example.dart';

Future<void> main() {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/**.feature")]
    ..hooks = [HookExample()]
    ..stepDefinitions = [GivenTestLaunchedStep(), ThenExpectCounterStep()]
    ..reporters = [ProgressReporter(), TestRunSummaryReporter()]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/app.dart"
    ..exitAfterTestRun = true;
    return GherkinRunner().execute(config);
}