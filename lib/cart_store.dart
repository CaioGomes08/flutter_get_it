import 'package:mobx/mobx.dart';
part 'cart_store.g.dart';

class Cart = _CartBase with _$Cart;

abstract class _CartBase with Store {
  @observable
  List<CartItem> items = [];

  @action
  void addItem(CartItem item) => items.add(item);

  @action
  void removeItem(CartItem item) => items.remove(item);
}

class CartItem {
  final String name;
  CartItem(this.name);
}
