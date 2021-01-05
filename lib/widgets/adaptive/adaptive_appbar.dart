import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveAppBar extends StatelessWidget {
  final String title;
  final List<Widget> actions;
  const AdaptiveAppBar({
    Key key,
    @required this.title,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoNavigationBar(
            middle: Text(title),
            backgroundColor: Theme.of(context).appBarTheme.color,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: actions,
            ),
          )
        : AppBar(
            title: Text(title),
            backgroundColor: Theme.of(context).appBarTheme.color,
            actions: actions,
          );
  }
}
