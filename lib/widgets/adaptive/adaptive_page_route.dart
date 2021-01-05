import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void adaptivePageRoutePush(BuildContext context, Widget next) {
  Navigator.of(context).push(Platform.isIOS
      ? CupertinoPageRoute(builder: (_) => next)
      : MaterialPageRoute(builder: (_) => next));
}
