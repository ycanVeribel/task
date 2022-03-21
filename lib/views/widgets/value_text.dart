import 'package:flutter/material.dart';

class ValueText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int? maxLines;
  const ValueText(this.text, {Key? key, this.style, this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.subtitle1,
      maxLines: maxLines,
    );
  }
}
