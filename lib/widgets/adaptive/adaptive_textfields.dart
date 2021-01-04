import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveTextField extends StatelessWidget {
  final String text;
  final Widget prefix;
  final TextEditingController controller;
  final Function handler;
  const AdaptiveTextField(
      {Key key,
      @required this.text,
      @required this.prefix,
      @required this.controller,
      @required this.handler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoTextField(
            padding: const EdgeInsets.all(12),
            placeholder: text,
            controller: controller,
            onSubmitted: (_) => handler(),
            autofocus: true,
            prefix: prefix,
          )
        : TextField(
            decoration: InputDecoration(labelText: text, prefix: prefix),
            controller: controller,
            onSubmitted: (_) => handler(),
            autofocus: true,
          );
  }
}
