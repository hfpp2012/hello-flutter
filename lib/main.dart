import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(
    MaterialApp(home: QuoteList()),
  );
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'be youself 0be youself 0be youself 0', author: 'hfpp2012'),
    Quote(text: 'be youself 1be youself 0be youself 0', author: 'hfpp2012'),
    Quote(text: 'be youself 1be youself 0be youself 0', author: 'hfpp2012'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            title: Text('Awesome Quotes'),
            centerTitle: true,
            backgroundColor: Colors.redAccent),
        body: Column(
          children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        ));
  }
}
