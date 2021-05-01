import 'package:flutter/material.dart';

class ResellerTile extends StatelessWidget {
  Map<String, dynamic> reseller;

  ResellerTile(this.reseller);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RotatedBox(
            quarterTurns: -1,
            child: Container(
              decoration: BoxDecoration(
                color: Color(int.parse('0xFF${reseller['cor']}')),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  reseller['tipo'],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Teste'),
                    Text('Teste'),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Nota'),
                      Text('4.7 *'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Tempo Médio'),
                      Text('30-50min'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Preço'),
                      Text('R\$ 80,00'),
                    ],
                  )
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
