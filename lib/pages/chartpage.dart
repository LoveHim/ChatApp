import 'dart:math';

import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF553370),
        body: Container(
          margin: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Color(0xffc199cd),
                  ),
                  SizedBox(
                    width: 125,
                  ),
                  Text(
                    "Tommy",
                    style: TextStyle(
                      color: Color(0xffc199cd),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 50.0, bottom: 20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.15,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: Column(children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 2.4),
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 201, 203, 207),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15))),
                  child: Text("Hello?, How was the day ?"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 2.4),
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 145, 152, 167),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  child: Text("The day was very good"),
                ),
                Spacer(),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Type a message",
                              hintStyle: TextStyle(color: Colors.black45)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color(0xFFf3f3f3),
                            borderRadius: BorderRadius.circular(60)),
                        child: Center(
                          child: Icon(
                            Icons.send,
                            color: Color(0xFFd3d3d3),
                          ),
                        ),
                      )
                    ]),
                  ),
                )
              ]),
            ),
          ]),
        ));
  }
}
