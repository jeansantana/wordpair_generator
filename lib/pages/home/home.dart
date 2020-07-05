import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wordpair_generator/pages/home/random_wordspairs.dart';

class HomeScreenCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('WordPair Generator'),
        ),
        child: Center(
          child: Text('This is an iOS style'),
        )
      )
    );
  }
}

class HomeScreenMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: RandomWords()
    );
  }
}
