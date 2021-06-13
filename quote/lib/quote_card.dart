import 'package:flutter/material.dart';
import 'quote.dart';

//Custom widget that is reusable
class QuoteCard extends StatelessWidget {

  QuoteCard({required this.quote, required this.delete});
  //In stateless widget cannot put data but if we put final so means only once
  final Quote quote;
  final delete;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[600],
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.green[400],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 6.0),
            TextButton.icon(
                onPressed: delete,
                label: Text('delete quote'),
                icon: Icon(
                  Icons.delete,
                ),
            )
          ],
        ),
      ),
    );
  }
}