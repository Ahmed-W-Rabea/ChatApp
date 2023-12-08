import 'package:chat_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/messages.dart';
import '../widgets/ChatBuble.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});
  static String id = 'ChatPage';
  final _controller = ScrollController();
  CollectionReference messages =
      FirebaseFirestore.instance.collection(kMessagesCollections);
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy(KcreatedAt, descending: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Message> messagesList = [];
          for (int i = 1; i < snapshot.data!.docs.length; i++) {
            messagesList.add(Message.fromjson(snapshot.data!.docs[i]));
          }
          return Scaffold(
              appBar: AppBar(
                backgroundColor: kPrimaryColor,
                title:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      width: 50,
                      height: 50,
                      child: Image.asset('assets/images/R.png')),
                  Text('Chat')
                ]),
                centerTitle: true,
                //  automaticallyImplyLeading: false,
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        reverse: true,
                        controller: _controller,
                        itemCount: messagesList.length,
                        itemBuilder: (context, index) {
                          return messagesList[index].id == email
                              ? ChatBuble(
                                  messages: messagesList[index],
                                )
                              : ChatBubleForFriend(
                                  messages: messagesList[index]);
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextField(
                      controller: controller,
                      onSubmitted: (data) {
                        messages.add({
                          kMessage: data,
                          KcreatedAt: DateTime.now(),
                          'id': email
                        });
                        controller.clear();
                        _controller.animateTo(0,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeIn);
                      },
                      decoration: InputDecoration(
                          hintText: 'send message',
                          suffixIcon: Icon(Icons.send),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: kPrimaryColor,
                              ))),
                    ),
                  )
                ],
              ));
        } else {
          return Text("Loading.....");
        }
      },
    );
  }
}
