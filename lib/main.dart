import 'package:byte_bank_app/page/formulario_transferencia.dart';
import 'package:byte_bank_app/page/lista_transferencias.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListaTransferencias()
    );
  }
}
