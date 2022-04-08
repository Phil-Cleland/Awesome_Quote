import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.yellow,
        accentColor: Colors.orange,
      ),
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Quote> quotes = [
    Quote(
        text:
            'The greatest glory in living lies not in never falling, but in rising every time we fall',
        author: 'Nelson Mandela'),
    Quote(
        text: 'The way to get started is to stop talking and begin doing',
        author: 'Walt Disney'),
    Quote(
        text:
            'If life were predictable it would cease to be life, and be without flavor',
        author: 'Eleanor Roosevelt'),
    Quote(
        text: "Life is what happens when you're busy making plans",
        author: 'John Lennon'),
    Quote(
        text: 'Whoever is happy makes others happy too', author: 'Anne Frank'),
    Quote(
        text:
            'You will face many defeats in life, but never let yourself be defeated',
        author: 'Maya Angelou')
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Awesome Quotes"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes.map((quote) {
            return quoteTemplate(quote);
          }).toList(),
        ));
  }
}
