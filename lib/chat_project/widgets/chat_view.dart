import 'package:basic_flutter_app/chat_project/domain/entities/message.dart';
import 'package:basic_flutter_app/chat_project/providers/chat_provider.dart';
import 'package:basic_flutter_app/chat_project/widgets/her_message_bubble.dart';
import 'package:basic_flutter_app/chat_project/widgets/message_bubble.dart';
import 'package:basic_flutter_app/widgets/message_field_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              controller: chatProvider.chatScrollController,
              itemCount: chatProvider.messages.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messages[index];
                return (message.fromWho == FromWho.hers)
                    ? const HerMessageBubble()
                    : MessageBubble(message: message);
              },
            )),
            MessageFieldBox(
              onValue: (value) => chatProvider.sendMessage(value),
            )
          ],
        ),
      ),
    );
  }
}
