import 'package:flutter/material.dart';

class HomeHead extends StatelessWidget {
  const HomeHead({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Paulista, São Paulo, SP',
                  style: TextStyle(fontSize: 17, color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 16, bottom: 16),
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
    );
  }
}
