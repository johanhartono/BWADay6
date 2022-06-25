// ignore_for_file: prefer_const_constructors

import 'package:bwadesigntocodeday6/widgets/theme.dart';
import 'package:flutter/material.dart';

class SecondRating extends StatelessWidget {
  const SecondRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 253, 253),
        body: Padding(
          padding: const EdgeInsets.only(top: 40, left: 28, right: 28),
          child: Column(children: [
            Center(
              child: Image.asset('assets/office_illustration.png',
              width: 295,
              height: 210,),
            ),
            SizedBox(height: 30,),
            Text('Enjoy Your Meal',
            style: firstTextStyle,),
            SizedBox(height: 10,),
            Text('Please rate our experience',
            style: subTextStyle,),
            SizedBox(height: 30,),
            Image.asset('assets/stars.png',
            width: 290,
            height: 50,),
            SizedBox(height: 10,),
            Container(
              width: 319,
              height: 130,
              decoration: BoxDecoration(
                color: Color(0xffF8F8F8),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 16,left:16,right:0),
                child: Text('Your Message',
                style: messageTextStyle,),
              ),
            ),
            Container(
              width: 319,height: 55,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff4074E6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  )
                ),
                 onPressed: () {},
                child: Text('Submit Review',
                style: rateTextStyle,),
              ),
            )

          ],),
        )
    );
  }
}
