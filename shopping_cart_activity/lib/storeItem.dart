class StoreItem {
  String name;
  int quantity;
  double unitPrice;

  StoreItem({
    required this.name,
    required this.quantity,
    required this.unitPrice,
  });

  double get totalValue => quantity * unitPrice;
}

class ShoppingList {
  List<StoreItem> items = [];

  double get totalAmount =>
      items.fold(0, (total, item) => total + item.totalValue);
}
