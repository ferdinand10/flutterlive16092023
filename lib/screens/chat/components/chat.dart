import 'package:chat/screens/profile/ChatDiscussion.dart';
import 'package:chat/utils/color_constants.dart';
import 'package:chat/utils/raduis_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: raduis12,
        color: Colors.white
      ),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Row(
           children: [
           ClipRRect(
             borderRadius: raduis12,
             child: Container(
               width: 64,
               height: 64,
               child: Image.asset('assets/images/user1.jpg',fit: BoxFit.cover),
             ),
           ),
             SizedBox(width: 5),
             Expanded(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children: [
                             Text('Purple haze', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),

                             Transform.rotate(angle: 1, child: Icon(Icons.push_pin, color: Color.fromRGBO(204, 199,209, 1),),)
                           ],
                         ),
                         Text('11:36', style: TextStyle(fontSize: 14, color: greyColor))
                       ],
                     ),
                     Text('Esther Howard', style: TextStyle(fontSize: 16)),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('I posted a new video on YouTube', style: TextStyle(color: greyColor), overflow: TextOverflow.ellipsis),
                         ClipRRect(
                           borderRadius: BorderRadius.circular(20),
                           child: Container(
                             height: 20,
                             padding: EdgeInsets.symmetric(horizontal: 5),
                             constraints: BoxConstraints(minWidth: 20),
                             child: Center(
                               child: Text('2', style: TextStyle(color: Colors.white)),
                             ),
                             color: primaryColor,
                           ),
                         )
                       ],
                     ),
                   ],
                 )
             )
         ],),
         SizedBox(height: 15),
         SizedBox(
           height: 33,
           child: Row(
             children: [
               Expanded(child: Stack(
                 children: [
                   Positioned(
                     left: 0,
                     child: Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           border: Border.all(width: 2, color: Colors.white),
                           borderRadius: BorderRadius.circular(100)
                       ),
                       width: 32,
                       height: 32,
                       child: ClipOval(
                         child: Image.asset('assets/images/user1.jpg',fit: BoxFit.cover),
                       ),
                     ),
                   ),
                   Positioned(
                     left: 15,
                     child: Container(
                       width: 32,
                       height: 32,
                       decoration: BoxDecoration(
                           color: Colors.white,
                         border: Border.all(width: 2, color: Colors.white),
                         borderRadius: BorderRadius.circular(100)
                       ),
                       child: ClipOval(
                         child: Image.asset('assets/images/user2.jpg',fit: BoxFit.cover),
                       ),
                     ),
                   ),
                   Positioned(
                     left: 30,
                     child: Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           border: Border.all(width: 2, color: Colors.white),
                           borderRadius: BorderRadius.circular(100)
                       ),
                       width: 32,
                       height: 32,
                       child: ClipOval(
                         child: Image.asset('assets/images/user3.jpg',fit: BoxFit.cover),
                       ),
                     ),
                   ),
                   Positioned(
                     left: 45,
                     child: Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           border: Border.all(width: 2, color: Colors.white),
                           borderRadius: BorderRadius.circular(100)
                       ),
                       width: 32,
                       height: 32,
                       child: ClipOval(
                         child: Image.asset('assets/images/user1.jpg',fit: BoxFit.cover),
                       ),
                     ),
                   ),
                   Positioned(
                     left: 60,
                     child: Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           border: Border.all(width: 2, color: Colors.white),
                           borderRadius: BorderRadius.circular(100)
                       ),
                       width: 32,
                       height: 32,
                       child: ClipOval(
                         child: Image.asset('assets/images/user2.jpg',fit: BoxFit.cover),
                       ),
                     ),
                   ),
                   Positioned(
                     left: 75,
                     child: Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           border: Border.all(width: 2, color: Colors.white),
                           borderRadius: BorderRadius.circular(100)
                       ),
                       width: 32,
                       height: 32,
                       child: ClipOval(
                         child: Image.asset('assets/images/user3.jpg',fit: BoxFit.cover),
                       ),
                     ),
                   ),
                   Positioned(
                     left: 90,
                     child: Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           border: Border.all(width: 2, color: Colors.white),
                           borderRadius: BorderRadius.circular(100)
                       ),
                       width: 32,
                       height: 32,
                       child: ClipOval(
                         child: Image.asset('assets/images/user1.jpg',fit: BoxFit.cover),
                       ),
                     ),
                   ),
                   Positioned(
                     left: 125,
                     top: 5,
                     child: Text('+ 987', style: TextStyle(color: greyColor)),
                   ),
                 ],
               )),
               ElevatedButton(onPressed: () {
                 Navigator.push(context, CupertinoPageRoute(builder: (context) {
                   return const ChatDiscussion();
                 },));
               }, child: const Text('Join', style: TextStyle(color: Colors.white)), style: ElevatedButton.styleFrom(backgroundColor: primaryColor),)
             ],
           ),
         )
       ],
      ),
    );
  }
}
