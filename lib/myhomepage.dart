import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    final names = ['João', 'Maria', 'Joaquim', 'Marcos'];
    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.blueGrey.shade900,
        title: const Text('AMC - GEOFI'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            final name = names[index];
            return Card(
              child: ListTile(
                tileColor: Colors.orange,
                title: Text(name),
              ),
            );
          },
        ),
      ),
    );
  }
}
