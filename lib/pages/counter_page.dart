import 'package:flutter/material.dart';
import 'package:ngolab/pages/other_page.dart';

class CounterPage extends StatefulWidget {
  static const routeName = "/counter-page";

  CounterPage() {
    print("================================");
    print("constructor Counter Page");
  }

  @override
  _CounterPageState createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  void didChangeDependencies() {
    final int? numberState = ModalRoute.of(context)?.settings.arguments as int?;
    if (numberState != null) {
      counter = numberState;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$counter", style: TextStyle(fontSize: 30)),
            SizedBox(height: 50),
            OutlinedButton(
              onPressed: () {
                final int? arguments =
                    ModalRoute.of(context)?.settings.arguments as int?;
                if (arguments != null) {
                  Navigator.pushReplacementNamed(
                    context,
                    OtherPage.routeName,
                    arguments: arguments,
                  );
                }
              },
              child: Text("Go to Other Page"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
