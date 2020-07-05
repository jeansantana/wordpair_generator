import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class FavoritesScreen extends StatelessWidget {
  final Set<WordPair> favoriteWordPairs;

  FavoritesScreen({ Key key, @required this.favoriteWordPairs }) : super(key: key);

  @override
  Widget build(Object context) {
    final Iterable<ListTile> tiles = favoriteWordPairs.map((WordPair pair) {
      return ListTile(
        title: Text(
          pair.asPascalCase, 
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      );
    });

    final List<Widget> divided = ListTile.divideTiles(
      context: context,
      tiles: tiles,
    ).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite WordPairs'),
      ),
      body: ListView(children: divided),
    );
  }
}