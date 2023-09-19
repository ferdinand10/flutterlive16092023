import 'package:chat/utils/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatDiscussion extends StatelessWidget {
  const ChatDiscussion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/bg_1.png"), fit: BoxFit.cover)
        ),
        child: Column(
         children: [
           Container(
             color: Colors.white,
             padding: EdgeInsets.only(top: 60, bottom: 5, right: 15, left: 15),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Icon(Icons.arrow_back_ios_new),
                 Column(
                   children: [
                     Text('Purple haze', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
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
                     )
                   ],
                 ),
                 ClipRRect(
                   borderRadius: BorderRadius.circular(12),
                   child: Image.asset('assets/images/user1.jpg', width: 40, height: 40,fit: BoxFit.cover),
                 ),
               ],
             ),
           ),
           Expanded(
             child: SingleChildScrollView(
               child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 12),
                 child: ListView.builder(
                   physics: NeverScrollableScrollPhysics(),
                     shrinkWrap: true,
                     padding: EdgeInsets.zero,
                     itemCount: 7,
                     itemBuilder: (context, index) {
                       return Row(
                         crossAxisAlignment: CrossAxisAlignment.end,
                         textDirection: index%2==0 ? TextDirection.ltr: TextDirection.rtl,
                         children: [
                           ClipRRect(
                             borderRadius: BorderRadius.circular(12),
                             child: Image.asset('assets/images/user1.jpg', width: 40, height: 40,fit: BoxFit.cover),
                           ),
                           SizedBox(width: 6),
                           Container(
                             constraints: BoxConstraints(
                                 maxWidth: 250
                             ),
                             child: ListView.builder(
                               itemCount: 6,
                               shrinkWrap: true,
                               padding: EdgeInsets.zero,
                               physics: NeverScrollableScrollPhysics(),
                               itemBuilder: (context, index) {
                                 return index!=3?Container(
                                   margin: EdgeInsets.only(top: 10),
                                   padding: EdgeInsets.all(10),
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(12),
                                       color: Colors.white
                                   ),
                                   child: Column(
                                     children: [
                                       Text('I want to share with you a photo of my plant that I took today. I hope you will like it😅🌸.'),
                                       SizedBox(height: 5),
                                       SizedBox(
                                         height: 20,
                                         width: MediaQuery.of(context).size.width,
                                         child: Row(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Expanded(child: Stack(
                                               children: [
                                                 Positioned(
                                                   left: 0,
                                                   child: Container(
                                                     decoration: BoxDecoration(
                                                         color: Color.fromRGBO(43, 153, 255, 1),
                                                         border: Border.all(width: 2, color: Colors.white),
                                                         borderRadius: BorderRadius.circular(100)
                                                     ),
                                                     padding: EdgeInsets.all(2),
                                                     child: ClipOval(
                                                       child: Icon(Icons.thumb_up, size: 14, color: Colors.white),
                                                     ),
                                                   ),
                                                 ),
                                                 Positioned(
                                                   left: 13,
                                                   child: Container(
                                                     decoration: BoxDecoration(
                                                         color: Color.fromRGBO(255, 195, 43, 1),
                                                         border: Border.all(width: 2, color: Colors.white),
                                                         borderRadius: BorderRadius.circular(100)
                                                     ),
                                                     padding: EdgeInsets.all(2),
                                                     child: Icon(Icons.lightbulb, color: Colors.white, size: 14),
                                                   ),
                                                 ),
                                                 Positioned(
                                                   left: 23,
                                                   child: Container(
                                                     decoration: BoxDecoration(
                                                         color: Color.fromRGBO(250, 105, 105, 1),
                                                         border: Border.all(width: 2, color: Colors.white),
                                                         borderRadius: BorderRadius.circular(100)
                                                     ),
                                                     padding: EdgeInsets.all(2),
                                                     child: ClipOval(
                                                       child: Icon(Icons.favorite, color: Colors.white, size: 14),
                                                     ),
                                                   ),
                                                 ),
                                               ],
                                             )),
                                             Row(
                                               crossAxisAlignment: CrossAxisAlignment.start,
                                               children: [
                                                 Row(
                                                   children: [
                                                     Icon(Icons.remove_red_eye, size: 15, color: greyColor),
                                                     SizedBox(width: 2),
                                                     Text('1.8K', style: TextStyle(fontSize: 12,color: greyColor),)
                                                   ],
                                                 ),
                                                 SizedBox(width: 5),
                                                 Row(
                                                   children: [
                                                     Text('12:00',style: TextStyle(fontSize: 12,color: greyColor),)
                                                   ],
                                                 ),
                                               ],
                                             )
                                           ],
                                         ),
                                       )
                                     ],
                                   )
                                 ):Container(
                                   margin: EdgeInsets.only(top: 10),
                                   padding: EdgeInsets.all(10),
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(12),
                                       color: Colors.white
                                   ),
                                   child: Column(
                                     children: [
                                       Image.asset("assets/images/img_1.png",  fit: BoxFit.cover),
                                       SizedBox(height: 5),
                                       SizedBox(
                                         height: 20,
                                         width: MediaQuery.of(context).size.width,
                                         child: Row(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Expanded(child: Stack(
                                               children: [
                                                 Positioned(
                                                   left: 0,
                                                   child: Container(
                                                     decoration: BoxDecoration(
                                                         color: Color.fromRGBO(43, 153, 255, 1), 
                                                         border: Border.all(width: 2, color: Colors.white),
                                                         borderRadius: BorderRadius.circular(100)
                                                     ),
                                                     padding: EdgeInsets.all(2),
                                                     child: ClipOval(
                                                       child: Icon(Icons.thumb_up, size: 14, color: Colors.white),
                                                     ),
                                                   ),
                                                 ),
                                                 Positioned(
                                                   left: 13,
                                                   child: Container(
                                                     decoration: BoxDecoration(
                                                         color: Color.fromRGBO(255, 195, 43, 1),
                                                         border: Border.all(width: 2, color: Colors.white),
                                                         borderRadius: BorderRadius.circular(100)
                                                     ),
                                                     padding: EdgeInsets.all(2),
                                                     child: Icon(Icons.lightbulb, color: Colors.white, size: 14),
                                                   ),
                                                 ),
                                                 Positioned(
                                                   left: 23,
                                                   child: Container(
                                                     decoration: BoxDecoration(
                                                         color: Color.fromRGBO(250, 105, 105, 1),
                                                         border: Border.all(width: 2, color: Colors.white),
                                                         borderRadius: BorderRadius.circular(100)
                                                     ),
                                                     padding: EdgeInsets.all(2),
                                                     child: ClipOval(
                                                       child: Icon(Icons.favorite, color: Colors.white, size: 14),
                                                     ),
                                                   ),
                                                 ),
                                               ],
                                             )),
                                             Row(
                                               crossAxisAlignment: CrossAxisAlignment.start,
                                               children: [
                                                 Row(
                                                   children: [
                                                     Icon(Icons.remove_red_eye, size: 15, color: greyColor),
                                                     SizedBox(width: 2),
                                                     Text('1.8K', style: TextStyle(fontSize: 12,color: greyColor),)
                                                   ],
                                                 ),
                                                 SizedBox(width: 5),
                                                 Row(
                                                   children: [
                                                     Text('12:00',style: TextStyle(fontSize: 12,color: greyColor),)
                                                   ],
                                                 ),
                                               ],
                                             )
                                           ],
                                         ),
                                       )
                                     ],
                                   ),
                                 );
                               },
                             ),
                           )
                         ],
                       );
                     },
                 ),
               ),
             ),
           ),
           Container(
             height: 56,
             decoration: BoxDecoration(
               color: Colors.white,
             ),
             padding: EdgeInsets.symmetric(horizontal: 12),
             child: Row(
               children: [
                 Image.asset('assets/icons/plus.png'),
                 SizedBox(width: 10),
                 Expanded(
                   child: Container(
                     height: 40,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(8),
                       color: Color.fromRGBO(242, 241, 243, 1)
                     ),
                     child: TextField(
                       textAlign: TextAlign.center,
                       decoration: InputDecoration(
                         hintText: 'Type something...',
                         enabledBorder: InputBorder.none,
                         focusedBorder: InputBorder.none,
                         floatingLabelAlignment: FloatingLabelAlignment.center
                       ),
                     ),
                   ),
                 ),
                 SizedBox(width: 10),
                 Image.asset('assets/icons/micro.png')
               ],
             ),
           )
         ],
        ),
      ),
    );
  }
}
