import 'package:chat/utils/color_constants.dart';
import 'package:chat/utils/raduis_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class BustYouRoom extends StatelessWidget {
  BustYouRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: raduis12
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width*.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Bust your room', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500,color: Colors.white)),
                Text('Up to 75% more profit', style: TextStyle(fontSize: 14, color: Colors.white)),
                SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(onPressed: () {
                  }, child: Text('Try now')),
                )
              ],
            ),
          ),
          CircularPercentIndicator(
            radius: 60.0,
            lineWidth: 13.0,
            animation: true,
            percent: 0.7,
            center: new Text(
              "70.0%",
              style:
              new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,  color: Colors.white),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.white,
            backgroundColor: Colors.white.withOpacity(.4),

          )
        ],
      ),
    );
  }
}
