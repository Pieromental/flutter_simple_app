import 'package:basic_flutter_app/chat_project/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/chat_view.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/dcextendeduniverse/images/d/d7/Henry_Cavill.jpg/revision/latest/scale-to-width-down/1000?cb=20200928223806&path-prefix=es'),
            ),
          ),
          title: const Text('Henry Cavil'),
        ),
        body: ChatView(),
      ),
    );
  }
}
