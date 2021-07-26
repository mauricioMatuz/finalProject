
// void main() {
//   runApp(FormularioPage());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "QR GENERATOS",
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   final String data = "si funcino el ejemplo :D";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Codgio Qr"),
//       ),
//       body: Center(
//         child: Column(
//           children: <Widget>[Text("Codigo generado con texto: $data << esto debe decir"),
//           QrImage(
//             version: QrVersions.auto,
//             data: data,
//             size: 200.0,
//             foregroundColor: Colors.blueGrey,
//             backgroundColor: Colors.white,
//             gapless: true,
//             errorCorrectionLevel: QrErrorCorrectLevel.Q,
//           )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Decoration extends State {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Scaffold(
//         body: Container(
//           width: double.infinity,
//           height: double.infinity,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: <Color>[
//                 const Color(0xFF1357B9),
//                 const Color(4279484091),
//               ],
//               begin: Alignment.topCenter
//             )
//           ),
//           child: ListView(
//             padding: EdgeInsets.symmetric(
//               horizontal: 40.0,
//               vertical: 200
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// return Scaffold(
//       appBar: AppBar(
//         title: Text("menu"),
//         actions: [],
//       ),
//       body: HomeTabContainer(),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
