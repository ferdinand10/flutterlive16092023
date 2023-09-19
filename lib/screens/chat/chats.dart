import 'package:chat/screens/chat/components/bust_you_room.dart';
import 'package:chat/screens/chat_detail/ChatDetail.dart';
import 'package:chat/utils/raduis_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/chat.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover)
        ),
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Chats', style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
                Image.asset('assets/icons/write.png')
              ],
            ),
            SizedBox(
              height: 40,
              child: SearchBar(padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 5, horizontal: 15)),textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 10)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: raduis12)),leading: Image.asset('assets/icons/search.png'),),
            ),
            SizedBox(height: 15),
            BustYouRoom(),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, CupertinoPageRoute(builder: (context) {
                              return ChatDetail();
                            },));
                          },
                          child: Chat(),
                        ),
                      );
                    },
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,   // <-- HERE
          showUnselectedLabels: false,
          items: [
        BottomNavigationBarItem(icon: Image.asset('assets/icons/chat.png'), label: 'w'),
            BottomNavigationBarItem(icon: Image.asset('assets/icons/search.png'), label: 'w'),
            BottomNavigationBarItem(icon: Image.asset('assets/icons/notification.png'), label: 'w'),
            BottomNavigationBarItem(icon: Image.asset('assets/icons/user.png'), label: 'w'),
      ]),
    );
  }
}
