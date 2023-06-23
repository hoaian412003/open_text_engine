import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:open_text_engine/rendering/line.dart';

class RenderEditor extends RenderBox with ContainerRenderObjectMixin<RenderBox, ContainerParentDataMixin<RenderBox>> {
  int maxLine = 10;
  final List<RenderLine> _lines = [];

  void addLine(String value){
    final line = RenderLine(TextSpan(text: value, style: TextStyle(color: Colors.pink, fontSize: 20)));
    _lines.add(line);
    markNeedsPaint();
  }

  get lines {
    return _lines;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    for(final line in _lines) {
      debugPrint('paint: $offset ${line.textSpan.text} ${line.textSpan.style?.color}');
      line.paint(context, offset);
    }
  }

  @override
  void performLayout() {
    size = constraints.constrain(Size(100, 100));
  }
}
