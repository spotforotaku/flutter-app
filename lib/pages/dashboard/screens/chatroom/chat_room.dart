import 'package:flutter/material.dart';
import 'package:otaku/constants.dart';

class GroupChatRoom extends StatefulWidget {
  const GroupChatRoom({Key? key}) : super(key: key);

  @override
  _GroupChatRoomState createState() => _GroupChatRoomState();

  void onSubmitted(String text) {}
}

class _GroupChatRoomState extends State<GroupChatRoom> {
  final TextEditingController _textController = TextEditingController();
  bool _isComposing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 10.0),
            child: Image.asset(chatnav),
            width: 400,
            height: 70.0,
          ),
          Container(
            width: 360,
            height: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7.0),
            child: Text(
              '02/05/2023',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10));
              },
            ),
          ),
          Divider(
            height: 1,
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.emoji_emotions),
                color: Colors.redAccent,
                onPressed: () {
                  // TODO: Open emoji picker
                },
              ),
              Expanded(
                child: TextField(
                  controller: _textController,
                  onChanged: (String text) {
                    setState(() {
                      _isComposing = text.isNotEmpty;
                    });
                  },
                  onSubmitted: _handleSubmitted,
                  decoration:
                      InputDecoration.collapsed(hintText: "Type a message"),
                ),
              ),
              IconButton(
                icon: Icon(Icons.attach_file),
                color: Colors.redAccent,
                onPressed: () {
                  // TODO: Open @ picker
                },
              ),
              IconButton(
                icon: Icon(Icons.send),
                color: Colors.redAccent,
                onPressed: _isComposing
                    ? () => _handleSubmitted(_textController.text)
                    : null,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _handleSubmitted(String text) {
    widget.onSubmitted(text);
    _textController.clear();
    setState(() {
      _isComposing = false;
    });
  }
}
