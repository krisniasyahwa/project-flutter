import 'package:flutter/material.dart';

import './pages/counter_page.dart';
import './pages/other_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
      routes: {
        // Perbaiki deklarasi rute
        CounterPage.routeName: (context) => CounterPage(),
        OtherPage.routeName: (context) => OtherPage(),
      },
    );
  }
}
