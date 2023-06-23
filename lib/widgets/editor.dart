import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:open_text_engine/rendering/editor.dart';

class Editor extends MultiChildRenderObjectWidget {

  const Editor({super.key});

  @override
  RenderObject createRenderObject(BuildContext context) {
    final editor = RenderEditor();
    editor.addLine('hoaian412003');
    return editor;
  }
}
