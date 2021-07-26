import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:proyecto_final/providers/ui_provider.dart';
import 'package:proyecto_final/widget/custom_navigation.dart';

import 'views/FormularioPage.dart';
import 'views/Inicio.dart';
import 'views/Lector_Qr.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Tab'),
        actions: [],
      ),
      body: HomeTabContainer(),
      bottomNavigationBar: CustomNavigations(),
      //floatingActionButton: Icon(Icons.camera),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class HomeTabContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final iuProvider = Provider.of<UiProvider>(context);
    final indexPosition = iuProvider.menuSelect;

    switch (indexPosition) {
      case 0:
        return FormularioPage();
      case 1:
        return Inicio();
      default:
        return Inicio();
    }
  }
}
