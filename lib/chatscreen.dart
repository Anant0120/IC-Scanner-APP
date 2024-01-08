import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController messageController = TextEditingController();
  List<String> messages = [];

  Future<String> getChatbotResponse(String message) async {
    final url = Uri.parse(
        "https://api.openai.com/v1/engines/davinci-codex/completions?prompt=$message");

    final response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
        "Authorization": "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"
      },
    );

    final decodedResponse = json.decode(response.body);
    return decodedResponse["choices"][0]["text"].toString();
  }

  void _submitMessage(String message) async {
    messageController.clear();

    String response = await getChatbotResponse(message);
    setState(() {
      messages.insert(0, "Bot: " + response);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat with Bot'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(messages[index]),
                );
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Type a message',
                    ),
                    controller: messageController,
                  ),
                ),
                IconButton(
                  onPressed: () => _submitMessage(messageController.text),
                  icon: const Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
