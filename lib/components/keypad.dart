import 'package:flutter/material.dart';

class KeyPad extends StatefulWidget {
  final String number;
  final Function onPressed;
  const KeyPad({
    this.number,
    this.onPressed,
  });

  @override
  _KeyPadState createState() => _KeyPadState();
}

class _KeyPadState extends State<KeyPad> {
  bool _isTapping = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: MaterialButton(
        height: 75.0,
        color: Colors.white.withOpacity(0.5),
        splashColor: Colors.purple,
        child: Text(
          widget.number,
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        onPressed: widget.onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  void getNumber() => widget.number;
}
