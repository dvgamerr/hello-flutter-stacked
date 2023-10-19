import 'package:flutter_test/flutter_test.dart';
import 'package:hello_flutter/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('ArticleViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
