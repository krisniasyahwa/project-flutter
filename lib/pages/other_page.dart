import 'package:flutter/material.dart';
import '../pages/counter_page.dart';

class OtherPage extends StatelessWidget {
  static const routeName = "/other-page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other Page"),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            // Pergi kembali ke halaman sebelumnya (counter page)
            Navigator.pushReplacementNamed(
              context, 
              CounterPage.routeName
            );
          },
          child: Text("Go to Counter Page"),
        ),
      ),
    );
  }
}
