import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [
    Message(text: 'Hello kokun', fromWho: FromWho.me),
    Message(text: 'Back work?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage () async {
     // TODO: implement method
  }

}
