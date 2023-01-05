import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> views = const [
    Center(
      child: Text('Dashboard'),
    ),
    Center(
      child: Text('Account'),
    ),
    Center(
      child: Text('Settings'),
    ),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.blueGrey.shade900,
        title: const Text('AMC - GEOFI'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              accountEmail: Text("marcosmacieljr@gmail.com"),
              accountName: Text("Marcos Maciel"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white54,
                child: Text("MM"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Comunicados'),
            ),
            ExpansionTile(
              title: Text('Comunicação Interna'),
              subtitle: Text('Gerencie suas CIs'),
              children: [
                ExpansionTile(
                  title: Text('Cadastrar CIs'),
                  children: [
                    ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text('Geral'),
                    ),
                    ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text('Compensação'),
                    ),
                    ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text('Hora Extra'),
                    ),
                    ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text('Intercâmbio'),
                    ),
                    ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text('Mudança de Turno'),
                    ),
                  ],
                ),
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('Pesquisa de CIs'),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.edit_note),
              title: Text('Ordem de Serviço'),
            ),
            ListTile(
              leading: Icon(Icons.car_rental),
              title: Text('Viatura'),
            ),
            ListTile(
              leading: Icon(Icons.receipt),
              title: Text('Recibo'),
            ),
            ListTile(
              leading: Icon(Icons.schedule),
              title: Text('Banco de Horas'),
            ),
            ListTile(
              leading: Icon(Icons.currency_exchange),
              title: Text('Hora Extra'),
            ),
            ListTile(
              leading: Icon(Icons.domain_verification),
              title: Text('Autorizações'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Gerenciar'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sair'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/logo_amc.png", width: 300, height: 200),
            const Text('Bem vindo ao Aplicativo de Serviços AMC - GEOFI'),
          ],
        ),
      ),
      /* bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        backgroundColor: Colors.amber,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.no_crash),
            label: 'Fazer CheckList',
          ),
        ],
      ), */
    );
  }
}
