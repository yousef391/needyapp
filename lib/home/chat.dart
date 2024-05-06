
import 'package:flutter/material.dart';
import 'package:sign_in/home/Message.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                _topChat(),
                _bodyChat(),
                SizedBox(
                  height: 120,
                )
              ],
            ),
            _formChat(),
          ],
        ),
      ),
    );
  }

  _topChat() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 14),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 20),
        CircleAvatar(
          backgroundImage: AssetImage('images/c2.jpg'),
          radius: 25,
          
        ),
        SizedBox(width: 20),
        Text(
          'Meriem',
          style: TextStyle(
            fontSize: 19,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}


  Widget _bodyChat() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left :5.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            _itemChat(
              avatar: 'images/c2.jpg',
              chat: 1,
              message:
                  'Hello i hope u are doing well',
            ),
            _itemChat(
              chat: 0,
              message: 'Hello',
            ),
            _itemChat(
              avatar: 'images/c2.jpg',
              chat: 1,
              message: 'Is the offer you shared still available?',
            ),
            _itemChat(
              chat: 0,
              message:
                  'yes ',
            ),
            _itemChat(
              avatar: 'images/c2.jpg',
              chat: 1,
              message:
             ' Can you give me more details ',
            ),
            _itemChat(
              avatar: 'images/c2.jpg',
              chat: 1,
              message: 'please? ',
            ),
            
            _itemChat(
              chat: 0,
              message:
                  'sur can i call u to discuss the details further',
            ),
            _itemChat(
              avatar: 'images/c2.jpg',
              chat: 1,
              message: 'yes why not 🐣 ',
            ),
          ],
        ),
      ),
    );
  }

  // 0 = Send
  // 1 = Recieved
  _itemChat({ chat,  avatar, message}) {
    return Row(
      mainAxisAlignment:
          chat == 0 ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        avatar != null
            ? Avatar(
                image: avatar,
                size: 45,
              )
            : Text(
                '',
                style: TextStyle(color: Colors.grey.shade400),
              ),
        Flexible(
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 20),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: chat == 0 ? Color(0xFF0097B2) : Color.fromARGB(255, 235, 234, 234),
              borderRadius: chat == 0
                  ? BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )
                  : BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
            ),
            child: Text('$message',
            style: TextStyle(
              color: chat == 0 ? Colors.white : Colors.black,
            ),),
          ),
        ),
        
      ],
    );
  }

  Widget _formChat() {
    return Positioned(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Type your message...',
              suffixIcon: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                padding: EdgeInsets.all(14),
                child: Icon(
                  Icons.send_rounded,
                  color: Color(0xFF0097B2),
                  size: 20,
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              labelStyle: TextStyle(fontSize: 12),
              contentPadding: EdgeInsets.all(20),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(64, 158, 158, 158)),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(131, 0, 151, 178)),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
