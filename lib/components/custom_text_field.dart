

import 'package:flutter/material.dart';

class Editor extends StatelessWidget {

  final TextEditingController _controlador;
  final String label;
  final String hint;
  final IconData? icon;


  Editor(this._controlador, this.label, this.hint, {this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _controlador,
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: label,
          hintText: hint,
        ),
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}