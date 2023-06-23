library open_text_engine;

import 'package:flutter/cupertino.dart';
import 'package:open_text_engine/widgets/editor.dart';


class EditorEngine extends StatefulWidget {
  const EditorEngine({super.key});

  @override
  State<EditorEngine> createState() => _EditorEngineState();
}

class _EditorEngineState extends State<EditorEngine> {

  @override
    Widget build(BuildContext context) {
      return const Editor();
    }
}
