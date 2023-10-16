import 'package:flutter/material.dart';
import 'storeItem.dart';

class HomePage extends StatelessWidget {
  final ShoppingList shoppingList;
  final Function(StoreItem) onItemAdded;

  const HomePage(this.shoppingList, this.onItemAdded);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Itens'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(labelText: 'Nome do Item'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Quantidade'),
              keyboardType: TextInputType.number,
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Valor Unitário'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
              },
              child: const Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}
