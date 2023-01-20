import 'package:agente_amc/checklist.dart';
import 'package:agente_amc/inicio.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Inicio(),
    const CheckList(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber.shade50,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.blueGrey.shade900,
          title: const Text(''),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.perm_device_info_rounded),
              tooltip: 'Sobre o Aplicativo',
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Center(
                          child: Text('App de Mobilidade Operacional'),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'NUTEC - AMC',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic,
                          ),
                        )
                      ],
                    ),
                  ),
                  content: const Text(
                      'Aplicativo desenvolvido pelo Núcleo de Tecnologia da AMC'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.no_crash),
              label: 'Viatura',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber,
          onTap: _onItemTapped,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 65.0,
          width: 65.0,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.white,
              child: ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(26), // Image radius
                  child: Image.asset(
                    "images/escudo_amc.png",
                  ),
                ),
                // elevation: 5.0,
              ),
            ),
          ),
        ));
  }
}
