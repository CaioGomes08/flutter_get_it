import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test_mobx/counter_store.dart';

void main() {
  test('When increment counter at 0 should return 1', () {
    final counter = Counter();

    expect(counter.value, 0);

    counter.increment();

    expect(counter.value, 1);
  });
}
