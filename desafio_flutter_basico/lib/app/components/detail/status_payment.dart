import 'package:flutter/material.dart';

class StatusPayment extends StatelessWidget {
  final String title;
  final bool isActive;

  const StatusPayment({
    Key key,
    this.title,
    this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 15),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: isActive ? Colors.blue : Colors.white,
            borderRadius: BorderRadius.circular(100),
            border: !isActive ? Border.all(color: Colors.grey) : null,
            boxShadow: isActive
                ? [
                    BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 10,
                        color: Colors.grey[300]),
                  ]
                : null,
          ),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 13, color: Colors.grey),
        ),
      ],
    );
  }
}
