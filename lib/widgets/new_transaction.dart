// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: sized_box_for_whitespace
// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleController,
            // onChanged: (value) {
            //   titleInput = value;
            // },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            controller: amountController,
            // onChanged: (value) {
            //   amountInput = value;
            // },
          ),
          FlatButton(
            textColor: Colors.purple,
            onPressed: () {
              addTransaction(
                  titleController.text, double.parse(amountController.text));
            },
            child: Text('Add Transaction'),
          )
        ]),
      ),
    );
  }
}
