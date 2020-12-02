import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addTx;
  NewTransaction({this.addTx});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (val) => titleInput = val,
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (val) => amountInput = val,
            ),
            FlatButton(
              onPressed: () => addTx(
                  titleController.text, double.parse(amountController.text)),
              child: Text('Add Transaction'),
              textColor: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }
}
