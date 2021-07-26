import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Page1 extends StatelessWidget {
  final String name;
  final String categoria;
  final String id;
  const Page1(
      {required this.name, required this.categoria, required this.id, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final String data = id + " " + name + " " + categoria;
    return Scaffold(
      appBar: AppBar(
        title: Text("Codgio Qr"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Codigo generado con texto: $data << esto debe decir"),
            QrImage(
              version: QrVersions.auto,
              data: data,
              size: 200.0,
              foregroundColor: Colors.blueGrey,
              backgroundColor: Colors.white,
              gapless: true,
              errorCorrectionLevel: QrErrorCorrectLevel.Q,
            )
          ],
        ),
      ),
    );
  }
}
