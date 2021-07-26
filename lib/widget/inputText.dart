import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final String hint;
  final Icon icon;
  final TextInputType keyboard;
  final bool obscure;
  final void Function(String data) onChanged;

  const InputText({
    Key? key,
    required this.label,
    required this.hint,
    required this.icon,
    required this.keyboard,
    required this.obscure,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: this.keyboard,
        obscureText: this.obscure,
        onChanged: this.onChanged,
        decoration: InputDecoration(
            hintText: this.hint,
            labelText: this.label,
            labelStyle: TextStyle(
                color: Colors.blueGrey,
                fontFamily: 'FredokaOne',
                fontSize: 15.0),
            suffixIcon: this.icon,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
      ),
    );
  }
}
