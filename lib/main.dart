import 'package:back/quotes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Page(),
    );
  }
}

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  List<Quote> quotes = [
    Quote("La vie est trés belle.", "Inconnu"),
    Quote("Carpe diem.", "Horace"),
    Quote("Tout est possible.", "Inconnu"),
    Quote("Crois en toi.", "Inconnu"),
    Quote("Suis tes rêves.", "Inconnu"),
    Quote("Vivre l'instant présent.", "Inconnu"),
    Quote("Le bonheur est un choix.", "Inconnu"),
    Quote("La simplicité est la clé.", "Inconnu"),
    Quote("Rien n'est impossible.", "Inconnu"),
    Quote("Souris à la vie.", "Inconnu"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color.fromARGB(255, 34, 34, 34),
          child: Icon(
            Icons.add,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        appBar: AppBar(
          title: Text(
            "Quotes",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          elevation: 5,
          backgroundColor: Colors.black54,
        ),
        body: SingleChildScrollView(
            child: Column(
                children:  [
            ...quotes.map((q) => QuoteCard(q: q)).toList(),
            const SizedBox(height: 20),
          ], 
                  )));
  }
}

class QuoteCard extends StatelessWidget {
  final Quote q;
  QuoteCard({required this.q});
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                q.quote,
                style: TextStyle(
                    fontSize: 18, color: const Color.fromARGB(255, 72, 72, 72)),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                q.author,
                style: TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 34, 34, 34)),
              )
            ],
          ),
        ));
  }
}
