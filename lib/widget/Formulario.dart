import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_final/Page/views/Lector_Qr.dart';
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
  TextEditingController controllerName = TextEditingController(text: "");
  TextEditingController controllerCategory = TextEditingController(text: "");
  TextEditingController controllerId = TextEditingController(text: "");

  _submit() {
    return _nombre + "\n" + _categoria + "\n" + _id;
  }

  @override
  Widget build(BuildContext context) {
    String datas = "";
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          InputText(
            controller: controllerName,
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
            controller: controllerCategory,
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
            controller: controllerId,
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
              color: Color(0xFF49A005),
              onPressed: () {
                print(controllerName.text);
                print(controllerCategory.text);
                print(controllerId.text);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Page1(
                            name: controllerName.text,
                            categoria: controllerCategory.text,
                            id: controllerId.text)));
              },
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

  // ignore: non_constant_identifier_names

}
