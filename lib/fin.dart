import 'package:flutter/material.dart';

class Finish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Text('done.'),
      ),
    );
  }
}
