import 'package:flutter/material.dart';

class UtilsNavigator {
  static void goToNextPage(BuildContext context, Widget nextPage) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => nextPage,
      ),
    );
  }
}
