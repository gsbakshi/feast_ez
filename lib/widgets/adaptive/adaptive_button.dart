import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveButton extends StatelessWidget {
  final String label;
  final Function handler;
  const AdaptiveButton({
    Key key,
    @required this.label,
    @required this.handler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            color: Theme.of(context).buttonColor,
            child: Text(
              'Add Transaction',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Theme.of(context).textTheme.button.color,
              ),
            ),
            onPressed: handler)
        : RaisedButton(
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            textColor: Theme.of(context).textTheme.button.color,
            onPressed: handler);
  }
}
