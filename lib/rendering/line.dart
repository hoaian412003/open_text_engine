import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class RenderLine extends RenderBox {

  final TextSpan textSpan;

  RenderLine(this.textSpan);

  @override
  void paint(PaintingContext context, Offset offset) {
    final TextPainter textPainter = TextPainter(text: textSpan, textDirection: TextDirection.ltr);
    textPainter.layout();
    textPainter.paint(context.canvas, offset);
  }
}
