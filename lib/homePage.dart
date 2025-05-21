import 'package:flutter/material.dart';
import 'package:prov_state/counter_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  void increment() {}
  @override
  Widget build(BuildContext context) {
    return Consumer<Counter>(
        builder: (context, value, child) => Scaffold(
              appBar: AppBar(title: Text('Provider')),
              body: Column(
                children: [
                  Text(
                    'Count',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(value.count.toString(), style: TextStyle(fontSize: 20))
                ],
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  final counter = context.read<Counter>();
                  counter.increment();
                },
                child: Icon(Icons.add),
              ),
            ));
  }
}
