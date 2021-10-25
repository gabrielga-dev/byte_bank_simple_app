import 'package:byte_bank_app/data_shape/transferencia.dart';
import 'package:byte_bank_app/page/formulario_transferencia.dart';
import 'package:flutter/material.dart';

class ListaTransferencias extends StatefulWidget{

  final List<Transferencia> _transferencias = [];

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciaState();
  }
}

class ListaTransferenciaState extends State<ListaTransferencias>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferências'),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice){
          return ItemTransferencia(widget._transferencias[indice]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future future = Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FormularioTransferencia()
              )
          );
          future.then((transferencia) {
            if(transferencia !=  null){
              setState(() {
                debugPrint(widget._transferencias.length.toString());
                widget._transferencias.add(transferencia);
                debugPrint(widget._transferencias.length.toString());
                debugPrint('$transferencia');
              });
            }
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

}

class ItemTransferencia extends StatelessWidget{

  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: const Icon(Icons.monetization_on),
          title: Text(_transferencia.valor.toString()),
          subtitle: Text(_transferencia.numeroConta.toString()),
        )
    );
  }
}
