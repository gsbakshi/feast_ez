import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String label;
  const SectionTitle({
    Key key,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 8,
        left: 8,
        right: 180,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 4,
          ),
        ),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
