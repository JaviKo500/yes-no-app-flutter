import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
   
  const ChatScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/fd16c84d-dbba-4d3a-a4e3-14d52f3fd6aa/df6o8wh-690f5f13-347e-4376-8100-4eac9706b683.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2ZkMTZjODRkLWRiYmEtNGQzYS1hNGUzLTE0ZDUyZjNmZDZhYVwvZGY2bzh3aC02OTBmNWYxMy0zNDdlLTQzNzYtODEwMC00ZWFjOTcwNmI2ODMuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.pXZrphw82DUSgE8cKaAJj8wDzPBXZ4dWuBcW4fLCCRs'
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'UN Kokun',
          style: TextStyle()
        ),
      ),
      body: const Center(
         child: Text('ChatScreen'),
      ),
    );
  }
}