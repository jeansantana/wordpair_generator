import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final randomWordPairs = <WordPair>[];
  final favoriteWordPairs = Set<WordPair>();

  Widget buildListView() {
    // needs to return a list item
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, item) {
        if (item.isOdd) {
          return Divider();
        }

        final index = item ~/ 2;

        if (index >= randomWordPairs.length) {
          randomWordPairs.addAll(generateWordPairs().take(10));
        }

        return buildListItem(randomWordPairs[index]);
      },
    );
  }

  Widget buildListItem(WordPair pair) {
    final isFavorite = favoriteWordPairs.contains(pair);

    return ListTile(
      title: Text(
        pair.asPascalCase, 
        style: TextStyle(
          fontSize: 18.0
        ),
      ),
      trailing: IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: isFavorite ? Colors.red : null,
        ),
        onPressed: () {
          // On pressed event for the favorite icon button
          setState(() {
            if (isFavorite) {
              favoriteWordPairs.remove(pair);
            } else {
              favoriteWordPairs.add(pair);
            }
          });
        },
      ),
      onTap: () {

      },
    );
  }

  void goToFavorites() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
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
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WordPair Generator'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: goToFavorites,
          )
        ],
      ),
      body: buildListView()
    );
  }
}
