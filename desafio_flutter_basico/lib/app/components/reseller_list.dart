import 'package:flutter/material.dart';

import 'reseller_tile.dart';

class ResellerList extends StatelessWidget {
  List<dynamic> resellers;

  ResellerList(this.resellers);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
