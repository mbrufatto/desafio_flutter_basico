import 'package:desafio_flutter_basico/app/pages/home_page.dart';
import 'package:desafio_flutter_basico/app/pages/detail_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      onGenerateRoute: (settings) {
        Widget page;

        switch (settings.name) {
          case '/detail':
            var reseller = settings.arguments;
            page = DetailPage(
              reseller: reseller,
            );
            break;
        }
        return MaterialPageRoute(
          builder: (_) => page,
          settings: settings,
        );
      },
      // routes: {
      //   DetailPage.routerName: (_) => DetailPage(),
      // },
    );
  }
}
