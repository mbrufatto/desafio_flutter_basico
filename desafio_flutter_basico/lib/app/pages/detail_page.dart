import 'package:desafio_flutter_basico/app/components/detail/status_payment.dart';
import 'package:desafio_flutter_basico/helper.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static String routerName = '/detail';

  int quantity;
  double total;
  final Map<String, dynamic> reseller;
  DetailPage({this.reseller})
      : total = reseller['preco'],
        quantity = 1;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var appBar = AppBar(
    title: Text('Selecionar Produto'),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '?',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: appBar,
      body: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height -
            appBar.preferredSize.height -
            mediaQuery.padding.top,
        child: Column(
          children: [
            _selectProductHead(),
            _selectProductTotal(),
            _selectProductContent(),
            Expanded(
              child: SizedBox(),
            ),
            _selectProductButton(),
          ],
        ),
      ),
    );
  }

  Widget _selectProductHead() {
    return Container(
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.only(bottom: 2),
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey[300],
          blurRadius: 10,
          offset: Offset(0, 5),
        ),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const StatusPayment(
            title: 'Comprar',
            isActive: true,
          ),
          Expanded(
            child: Column(
              children: [
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
          const StatusPayment(
            title: 'Pagamento',
            isActive: false,
          ),
          Expanded(
            child: Column(
              children: [
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
          const StatusPayment(
            title: 'Confirmação',
            isActive: false,
          )
        ],
      ),
    );
  }

  Widget _selectProductTotal() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Color(int.parse('0xFF${widget.reseller['cor']}')),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '${widget.quantity}',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                '${widget.reseller["nome"]} - Botijão de 13kg ',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Text(
                  'R\$',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ),
              Text(
                Helper.formatPrice(
                    price: double.tryParse('${widget.total}'), symbol: ''),
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700]),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _selectProductContent() {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 18),
                  child: Icon(
                    Icons.home,
                    size: 40,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${widget.reseller["nome"]}',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '${widget.reseller["nota"]}',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey[700]),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 10,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '${widget.reseller["tempoMedio"]} min',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  color: Color(int.parse('0xFF${widget.reseller['cor']}')),
                  child: Text(
                    '${widget.reseller["tipo"]}',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Botijão de 13Kg',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${widget.reseller["nome"]}',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 1.8),
                            child: Text(
                              'R\$',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          Text(
                            Helper.formatPrice(
                                price: double.tryParse(
                                    '${widget.reseller['preco']}'),
                                symbol: ''),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          if (widget.quantity > 1) {
                            setState(() {
                              widget.quantity -= 1;
                              widget.total =
                                  widget.quantity * widget.reseller['preco'];
                            });
                          }
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey,
                          ),
                          child: Icon(Icons.remove),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://infoeds.com.br/wp-content/uploads/2017/11/prod_icon-gas.png'),
                          ),
                        ),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 13),
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(
                                  int.parse('0xFF${widget.reseller['cor']}')),
                            ),
                            child: Text('${widget.quantity}',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            widget.quantity += 1;
                            widget.total =
                                widget.quantity * widget.reseller['preco'];
                          });
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey,
                          ),
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _selectProductButton() {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: RaisedButton(
        onPressed: () {},
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        padding: EdgeInsets.zero,
        child: Container(
          width: 220,
          height: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue[300],
                Colors.blue[700],
              ],
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              'IR PARA O PAGAMENTO',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ),
        ),
      ),
    );
  }
}
