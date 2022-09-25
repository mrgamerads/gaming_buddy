import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gaming_buddy/src/models/message_model.dart';
import 'package:gaming_buddy/src/models/user_model.dart';

class ChatScreen extends StatefulWidget {

  final User user;

  ChatScreen({required this.user});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

@override
void initState(){
  initState();
  changeStatusBar();
}

changeStatusBar(){
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black,
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.red,
  ),
  );
}

rollbackStatusBar(){}

class _ChatScreenState extends State<ChatScreen> {

  _buildMessage(Message message, bool isMe){
    final Container msg =         Container(
      margin: isMe ? const EdgeInsets.only(
        top: 8,
        bottom: 8,
        left: 80,
      )
          : const EdgeInsets.only(
        top: 8,
        bottom: 8,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 15,
      ),
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        color: isMe ? Colors.red.shade900 : Colors.red.shade400,
        borderRadius: isMe ? const BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ) : const BorderRadius.only(
          topRight: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            message.time,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(message.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );

    if (isMe){
      return msg;
    }

    return Row(
      children: <Widget>[
        msg,
        ! isMe ? IconButton(
          icon: message.isLiked ? const Icon (Icons.favorite) : const Icon(Icons.favorite_border) ,
          iconSize: 30.0,
          color: message.isLiked ? Colors.red : Colors.black54,
          onPressed: () {},
        ) : const SizedBox.shrink(),
      ],
    );
  }

  _buildMessageComposer (){
    return Container (
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      height: 70,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.emoji_emotions),
            iconSize: 25,
            color: Colors.black54,
            onPressed: (){},
          ),

          Expanded(
              child: TextField(
                textCapitalization: TextCapitalization.sentences,
                onChanged: (value){},
                decoration: const InputDecoration.collapsed(
                  hintText: 'Envie uma mensagem....',
                ),
              ),
          ),

          IconButton(
            icon: const Icon(Icons.send),
            iconSize: 25,
            color: Colors.black54,
            onPressed: (){},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.user.name),
        elevation: 2,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(30),
                   topRight: Radius.circular(30),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: ListView.builder(
                    reverse: true,
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
                      return _buildMessage(message, isMe);
                    },
                  ),
                ),
                ),
              ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}
