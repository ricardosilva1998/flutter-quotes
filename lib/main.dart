import 'package:flutter/material.dart';
import 'Quote.dart';
import 'QuoteCard.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be Yourself. Everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genious'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple')
  ];
  // List<String> quotes = [
  //   'Be Yourself. Everyone else is already taken',
  //   'I have nothing to declare except my genious',
  //   'The truth is rarely pure and never simple'
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ));
  }
}
