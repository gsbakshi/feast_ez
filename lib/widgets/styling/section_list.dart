import 'package:flutter/material.dart';

class SectionList extends StatelessWidget {
  final List dataHandler;
  const SectionList({
    Key key,
    @required this.dataHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: dataHandler.map((item) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text('\u2022  $item'),
          );
        }).toList(),
      ),
    );
  }
}
