import 'package:flutter/material.dart';
import '../pages/other_page.dart';

class WidgetCounter extends StatefulWidget {
  const WidgetCounter({
    Key? key, // Membuat parameter key menjadi opsional
    required this.counter,
  });

  final int counter;

  @override
  _WidgetCounterState createState() {
    print("createState()");
    return _WidgetCounterState();
  }
}

class _WidgetCounterState extends State<WidgetCounter> {
  @override
  void initState() {
    super.initState();
    print("initState()");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //print("Old : ${oldWidget.counter}");
    print("didChangeDependencies()");
    //  print("New : ${Widget.counter}");
  }

  @override
  void didUpdateWidget(WidgetCounter oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget()");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate()");
  }

  @override
  void dispose() {
    super.dispose();
    print("Disposed()");
  }

  @override
  Widget build(BuildContext context) {
    print("build()");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${widget.counter}",
            style: TextStyle(
              fontSize: 35,
            ),
          ),
          SizedBox(height: 50),
          OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(context, OtherPage.routeName,
                  arguments: widget.counter);
            },
            child: Text("Go to Other Page"),
          ),
        ],
      ),
    );
  }
}
