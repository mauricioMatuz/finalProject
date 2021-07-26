import 'package:flutter/material.dart';
import 'package:proyecto_final/widget/inputText.dart';

class Registro extends StatefulWidget {
  Registro({Key? key}) : super(key: key);

  @override
  RegistroState createState() => RegistroState();
}

class RegistroState extends State<Registro> {
  GlobalKey<FormState> _formkey = GlobalKey();
  String _nombre = "";
  String _categoria = "";
  String _id = "";
  _submit() {
    this._nombre = _nombre;
    this._categoria = _categoria;
    this._id = _id;
  }

  @override
  Widget build(BuildContext context) {
    String datas = "";
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          InputText(
            label: 'Nombre',
            hint: 'Nombre',
            icon: Icon(Icons.verified_user),
            keyboard: TextInputType.name,
            obscure: false,
            onChanged: (data) {
              _nombre = data;
            },
          ),
          Divider(
            height: 15.0,
          ),
          InputText(
            label: 'Categoria',
            hint: 'Categoria de riesgo: bajo, alto, mundial',
            icon: Icon(Icons.category),
            keyboard: TextInputType.name,
            obscure: false,
            onChanged: (data) {
              _categoria = data;
            },
          ),
          Divider(
            height: 15.0,
          ),
          InputText(
            label: 'ID',
            hint: 'ID',
            icon: Icon(Icons.perm_identity),
            keyboard: TextInputType.name,
            obscure: false,
            onChanged: (data) {
              _id = data;
            },
          ),
          Divider(
            height: 15.0,
          ),
          SizedBox(
            width: double.infinity,
            child: FlatButton(
              color: Colors.pink,
              onPressed: this._submit,
              child: Text(
                'Registrar criatura SCP',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontFamily: 'PermenentMarker'),
              ),
            ),
          )
        ],
      ),
    );
  }

  get String Nombre(){
    return _nombre;
  }
}

//   body() {
//     return Form(
//       child: SingleChildScrollView(
//           child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           crearInput1(),
//           SizedBox(
//             height: 20,
//           ),
//           crearInput2(),
//           SizedBox(
//             height: 20,
//           ),
//           crearInput3(),
//           SizedBox(
//             height: 20,
//           ),
//           crearInput4(),
//         ],
//       )),
//     );
//   }

//   Widget crearInput1() {
//     return Container(
//       padding: EdgeInsets.all(20),
//       child: TextField(
//         decoration: InputDecoration(
//             labelText: 'Nombre Completo', hintText: 'Ingrese nombre'),
//       ),
//     );
//   }

//   Widget crearInput2() {
//     return Container(
//       padding: EdgeInsets.all(20),
//       child: TextField(
//         decoration: InputDecoration(
//             labelText: 'Rango',
//             hintText: 'Ingrese nivel de seguridad permitido'),
//       ),
//     );
//   }

//   Widget crearInput3() {
//     return Container(
//       padding: EdgeInsets.all(20),
//       child: TextField(
//         decoration: InputDecoration(
//             labelText: 'Codigo de Identificacion', hintText: 'Ingrese ID'),
//       ),
//     );
//   }

//   Widget crearInput4() {
//     return Container(
//       padding: EdgeInsets.all(20),
//       child: TextField(
//         decoration: InputDecoration(
//             labelText: 'Telefono', hintText: 'Ingrese Telefono'),
//       ),
//     );
//   }
// }
