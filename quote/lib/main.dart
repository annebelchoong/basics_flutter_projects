import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes =[
    Quote(text: 'Be yourself; everyone else is already taken', author: 'Oscar Wilde'),
    Quote(text: 'I have nothing to declare except my genius', author: 'Oscar Wilde'),
    Quote(text: 'The truth is rarely pure and never simple', author: 'Oscar Wilde'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.green[800],
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
          delete: (){
              setState(() {
                quotes.remove(quote);
              });
          },
        )).toList(),
      ),
    );
  }
}



