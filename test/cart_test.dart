import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test_mobx/cart_store.dart';

void main() {
  test('When add a cart should contains that cart', () {
    final cart = Cart();
    final item = CartItem('teste');

    cart.addItem(item);

    expect(cart.items.length, 1);
    expect(cart.items.contains(item), true);
  });

  test(
      'When remove a cart '
      'should not contains that cart', () {
    final cart = Cart();
    final item = CartItem('teste');
    cart.addItem(item);
    expect(cart.items.length, 1);
    expect(cart.items.contains(item), true);
    cart.removeItem(item);
    expect(cart.items.length, 0);
    expect(cart.items.contains(item), false);
  });
}
