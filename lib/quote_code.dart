import 'package:deer/main.dart';
import 'package:flutter/material.dart';


class QuoteCard extends StatelessWidget {

  final quote;
  final delete;
   QuoteCard ({ this.quote, this.delete});


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey.shade600,
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey.shade600,
              ),
            ),
             SizedBox(height: 8.0),
             TextButton.icon(
              onPressed: delete,
              label: Text('delete quote'),
               icon: Icon(Icons.delete), 
               ),   
          ],
        ),
      ),
    );
  }
}