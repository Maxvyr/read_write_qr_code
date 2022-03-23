import 'package:flutter/material.dart';

class BaseWidget extends StatelessWidget {
  const BaseWidget({required this.child, Key? key}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        top: true,
        bottom: true,
        child: child,
      ),
    );
  }
}
