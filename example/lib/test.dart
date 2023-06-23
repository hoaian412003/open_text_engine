import 'package:flutter/material.dart';
import 'package:open_text_engine/open_text_engine.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: EditorEngine());
  }
}
