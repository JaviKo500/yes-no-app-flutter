import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "?"',
      filled: true,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      suffixIcon: IconButton(
        onPressed: () {
          final textValue = textController.value.text;
          if (kDebugMode) {
            print('button $textValue');
          }
          textController.clear();
        },
        icon: const Icon(Icons.send),
      ),
    );
    return TextFormField(
      controller: textController,
      focusNode: focusNode,
      decoration: inputDecoration,
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      onFieldSubmitted: (value) {
        if (kDebugMode) {
          print('value $value');
        }
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
