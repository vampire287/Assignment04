import 'package:assignment4/Widgets/popmenu.dart';
import 'package:flutter/material.dart';

class TransitionPage extends StatelessWidget {
  final String text;
  const TransitionPage({required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$text page'),
        centerTitle: false,
        actions: const [
          PopMenu(),
        ],
      ),
      body: Center(
        child: Text(
          text,
        ),
      ),
    );
  }
}
