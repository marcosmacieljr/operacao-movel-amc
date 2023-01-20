import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset("images/logo_amc.png", width: 300, height: 200),
        const Center(
          child: Text('Bem vindo ao Aplicativo de Serviços AMC - GEOFI'),
        ),
      ],
    );
  }
}
