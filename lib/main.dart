// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: sized_box_for_whitespace
// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 34.12, date: DateTime.now()),
    Transaction(
        id: 't1', title: 'Glasses', amount: 53.21, date: DateTime.now()),
    Transaction(id: 't1', title: 'PS5', amount: 499, date: DateTime.now()),
  ];

  String? titleInput;
  String? amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter App')),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.blue,
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Text('CHART!!'),
            ),
            elevation: 5,
          ),
          Card(
            elevation: 5,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Title'),
                  onChanged: (value) {
                    titleInput = value;
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Amount'),
                  onChanged: (value) {
                    amountInput = value;
                  },
                ),
                FlatButton(
                  textColor: Colors.purple,
                  onPressed: () {
                    print(titleInput);
                    print(amountInput);
                  },
                  child: Text('Add Transaction'),
                )
              ]),
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.purple, width: 2)),
                      child: Text(
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple),
                        '\$${tx.amount}',
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 85, 84, 84)),
                            tx.title),
                        Text(
                            style: TextStyle(
                                color: Color.fromARGB(255, 85, 84, 84),
                                fontSize: 10),
                            DateFormat.yMMMMd().format(tx.date))
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
