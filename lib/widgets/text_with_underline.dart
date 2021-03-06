import 'package:flutter/material.dart';

class TextWithUnderline extends StatelessWidget {
  const TextWithUnderline({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 10,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
          ),
        ),
      ),
      child: Text(text),
    );
  }
}
