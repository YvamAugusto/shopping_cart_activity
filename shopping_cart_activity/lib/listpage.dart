import 'package:flutter/material.dart';
import 'storeItem.dart';

class ListPage extends StatelessWidget {
  final ShoppingList shoppingList;
  final Function(StoreItem) onItemRemoved;

  const ListPage(this.shoppingList, this.onItemRemoved);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Compras'),
      ),
      body: ListView.builder(
        itemCount: shoppingList.items.length,
        itemBuilder: (context, index) {
          final item = shoppingList.items[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text('Quantidade: ${item.quantity} - Valor Unitário: ${item.unitPrice.toStringAsFixed(2)}'),
            trailing: Text('Total: R\$${item.totalValue.toStringAsFixed(2)}'),
            onTap: () {
            },
          );
        },
      ),
    );
  }
}
