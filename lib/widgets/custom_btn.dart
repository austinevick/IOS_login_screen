import 'package:flutter/material.dart';

class SocialLoginButtons extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onTap;

  const SocialLoginButtons({Key key, this.onTap, this.color, this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 150,
        child: FlatButton(
            shape: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(50.0)),
            onPressed: onTap,
            color: color,
            child: child),
      ),
    );
  }
}
