import 'package:flutter/material.dart';
import 'homePage.dart';
import 'listPage.dart';
import 'storeItem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ShoppingList shoppingList = ShoppingList();

  void addItem(StoreItem item) {
    setState(() {
      shoppingList.items.add(item);
    });
  }

  void removeItem(StoreItem item) {
    setState(() {
      shoppingList.items.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Lista de Compras'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Cadastro'),
                Tab(text: 'Lista'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomePage(shoppingList, addItem),
              ListPage(shoppingList, removeItem),
            ],
          ),
        ),
      ),
    );
  }
}
