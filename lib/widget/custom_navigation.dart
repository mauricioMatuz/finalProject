import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final/providers/ui_provider.dart';

class CustomNavigations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final iuProvider = Provider.of<UiProvider>(context);
    final indexPosition = iuProvider.menuSelect;

    return BottomNavigationBar(
        onTap: (int i) => iuProvider.menuSelect = i,
        currentIndex: indexPosition,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.request_page), label: 'Menu 1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_outline), label: 'Menu 2'),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.accessibility_new), label: 'Menu 3'),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.accessibility_new), label: 'Menu 4'),
        ]);
  }
}
