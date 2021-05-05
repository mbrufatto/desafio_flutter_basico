import 'dart:convert';

import 'package:desafio_flutter_basico/app/components/home_head.dart';
import 'package:desafio_flutter_basico/app/components/reseller_list.dart';
import 'package:desafio_flutter_basico/app/components/reseller_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> resellers;

  @override
  void initState() {
    rootBundle.loadString('assets/dados.json').then((jsonData) {
      this.setState(() {
        resellers = json.decode(jsonData);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Escolha uma Revenda'),
        centerTitle: false,
        actions: <Widget>[
          PopupMenuButton(
              icon: Icon(
                Icons.swap_vert_outlined,
                size: 26,
              ),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Melhor Avaliação',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Checkbox(
                          checkColor: Colors.blue,
                          value: false,
                          onChanged: (_) {},
                        )
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Mais Rápido',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Checkbox(
                          checkColor: Colors.blue,
                          value: false,
                          onChanged: (_) {},
                        )
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Mais Barato',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Checkbox(
                          checkColor: Colors.blue,
                          value: false,
                          onChanged: (_) {},
                        )
                      ],
                    ),
                  ),
                ];
              }),
          PopupMenuButton(
            icon: Icon(
              Icons.help,
              size: 26,
            ),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text(
                    'Suporte',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    'Termos de Serviço',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HomeHead(),
          ResellerList(resellers),
        ],
      ),
    );
  }
}
