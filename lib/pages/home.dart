// import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      theme: ThemeData(
        primaryColor: Colors.purple[900]
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('WordPair Generator'),
        ),
        body: Center(
          child: Text('This is an Android style'),
        ),
      )
    );
  }
}
