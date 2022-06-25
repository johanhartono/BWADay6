// ignore_for_file: prefer_const_constructors

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class SecondPricing extends StatelessWidget {
  const SecondPricing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration:  BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/linier_background.png'))
            )
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Column(
                children: [
                  Center(
                    child: Image.asset('assets/pricing_illustration.png',
                    width: 164,),
                  ),
                  SizedBox(height: 10,),
                  Text('Pro Features',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  )),
                   SizedBox(height: 10,),
                  Text('Unlock the winner modules \n and get more insight',
                  style: GoogleFonts.poppins(
                    color: Color(0xff7F7FAD),
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                  ),
                  Padding(
                     padding: const EdgeInsets.only(top: 50, left: 28),
                    child: Column(
                      children: [
                      Row(
                        children: [
                        Image.asset('assets/orange_check.png',
                        width: 26,),
                        SizedBox(height: 12),
                        Text('Unlock Our Tip Charts',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                        )),
                        Image.asset('assets/orange_check.png',
                        width: 26,),
                        SizedBox(height: 12),
                        Text('Subribe Now',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                        )),  
                        Image.asset('assets/orange_check.png',
                        width: 26,),
                        SizedBox(height: 12),
                        Text('Contact Support',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                        )),                      
                      ],),
                      SizedBox(height: 12),
                      Container(
                        width: 250,
                        height: 55,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shadowColor: Color(0xffE57C73),
                            backgroundColor: Color(0xffE57C73),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(31),
                          ),
                          ),
                          onPressed: (){}, child: Row(
                            children: [
                              Text('Subsribe now',
                        style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight : FontWeight.w600,
                        )),
                        Image.asset('assets/button_arrow.png',
                        width: 25,)
                            ],
                          ))
                        ),
                        SizedBox(height: 20,),
                        Text('Contact Support',
                         style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,  
                          decoration: TextDecoration.underline,                     
                        ),
                        )
                    ],),
                  )
                ],
              ),
            )
        ],
      )
    );
  }
}