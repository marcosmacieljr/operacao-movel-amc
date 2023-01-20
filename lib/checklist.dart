import 'package:flutter/material.dart';

class CheckList extends StatefulWidget {
  const CheckList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.amber.shade50,
            foregroundColor: Colors.blueGrey.shade900,
            title: const Center(
                child: Text(
              'ÁREA DE CHECKLIST',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ))),
        body: Column(
          children: const <Widget>[
            Spacer(),
            RecebeViatura(),
            DevolveViatura(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class RecebeViatura extends StatelessWidget {
  const RecebeViatura({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 0,
        color: Colors.green,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Receber');
          },
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Center(
                child: Text(
              'RECEBER VIATURA',
              style: TextStyle(fontSize: 20, color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}

class DevolveViatura extends StatelessWidget {
  const DevolveViatura({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 5,
        color: Colors.red,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Devolver');
          },
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Center(
                child: Text(
              'DEVOLVER VIATURA',
              style: TextStyle(fontSize: 20, color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}
