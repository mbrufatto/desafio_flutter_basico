import 'dart:convert';

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
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Botijões de 13gk em:',
                        style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                      ),
                      Text(
                        'Av. Paulista, 1001',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Paulista, São Paulo, SP',
                        style: TextStyle(fontSize: 17, color: Colors.grey[500]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 16, right: 16, bottom: 16),
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.location_on),
                        iconSize: 32,
                        color: Colors.blue,
                      ),
                      Text(
                        'Mudar',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.builder(
                  itemCount: resellers?.length ?? 0,
                  itemBuilder: (_, index) {
                    return ResellerTile(resellers[index]);
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
