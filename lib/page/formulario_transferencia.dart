
import 'package:byte_bank_app/components/custom_text_field.dart';
import 'package:byte_bank_app/data_shape/transferencia.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FormularioTransferenciState();
}

class FormularioTransferenciState extends State<FormularioTransferencia>{

  final TextEditingController _controladorNumeroConta = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criando Transferência'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
                _controladorNumeroConta,
                'Número da Conta',
                '0000'
            ),
            Editor(
                _controladorValor,
                'Valor da transferência',
                '00.00',
                icon: Icons.monetization_on
            ),
            ElevatedButton(
              onPressed: () => _criaTransferencia(context),
              child: const Text(
                'Confirmar',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final int? conta =  int.tryParse(_controladorNumeroConta.text);
    final double? valor =  double.tryParse(_controladorValor.text);
    if((conta != null) && (valor != null)){
      final novaTransferencia = Transferencia(valor, conta);
      Navigator.pop(context, novaTransferencia);
    }
  }
}
