import 'package:chat/utils/color_constants.dart';
import 'package:chat/utils/raduis_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatDetail extends StatelessWidget {
  const ChatDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/bg_1.png"), fit: BoxFit.cover)
        ),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 375,
              padding: EdgeInsets.only(top: 60,left: 15, right: 15),
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/cat.png"), fit: BoxFit.cover)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios_new, color: Colors.white,),
                  Image.asset("assets/icons/upload.png")
                ],
              ),
            ),
            Positioned(
              top: 340,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: raduis12.copyWith(bottomLeft: Radius.zero, bottomRight: Radius.zero)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Cat lovers', style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person, size: 14, color: greyColor),
                              SizedBox(width: 2),
                              Text('4', style: TextStyle(color: greyColor),)
                            ],
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Icon(Icons.remove_red_eye, size: 14, color: greyColor),
                              SizedBox(width: 2),
                              Text('2 482', style: TextStyle(color: greyColor),)
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text('Our mission is not to bother you. But we can only share information about what happens with poor animals in this cruel world.🐈💜.')
                      ,SizedBox(height: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        child: ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: OutlinedButton(onPressed: () {

                              }, child: Text('🐈  Animals', style: TextStyle(color: Colors.black)), style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),),
                            );
                          },
                        ),
                      ),

                    ],
                  ),
                )
            ),
            Positioned(
              top: 575,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/icons/sound-off.png'),
                                  SizedBox(width: 10),
                                  Text('Mute')
                                ],
                              ),
                              Row(
                                children: [ 
                                  Text('No', style: TextStyle(color: greyColor)),
                                  Icon(Icons.arrow_forward_ios_outlined, color: greyColor)
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: raduis12,
                              color: Colors.white
                          ),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/icons/heart.png'),
                                  SizedBox(width: 10),
                                  Text('Reacted messages')
                                ],
                              ),
                              Row(
                                children: [
                                  Text('124', style: TextStyle(color: greyColor)),
                                  Icon(Icons.arrow_forward_ios_outlined, color: greyColor)
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: raduis12,
                              color: Colors.white
                          ),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/icons/blue-search.png'),
                                  SizedBox(width: 10),
                                  Text('Search')
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.arrow_forward_ios_outlined, color: greyColor)
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: raduis12,
                              color: Colors.white
                          ),
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}