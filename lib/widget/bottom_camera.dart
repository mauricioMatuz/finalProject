import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BottomCamera extends StatelessWidget {
  String barcodeScanRes = "";
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: () async {
          barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
            '#A03131',
            'Cancelar',
            false,
            ScanMode.QR,
          );
          //como ? se escucha medio trabado :C
        });
      //return barcodeScanRes; // que estoy retornando un widget no un string dice el error
  }
}
