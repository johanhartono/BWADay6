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
                  SizedBox(height: 15,),
                  Text('Pro Features',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  )),
                   SizedBox(height: 5,),
                  Text('Unlock the winner modules \n and get more insight',
                  style: GoogleFonts.poppins(
                    color: Color(0xff7F7FAD),
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.center,
                  ),
                  Padding(
                     padding: const EdgeInsets.only(top: 50, left: 100),
                    child: Column(
                      children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Image.asset('assets/orange_check.png',
                        width: 26,),
                        SizedBox(width: 12),
                        Text('Unlock Our Tip Charts',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 8,
                        )),
                    
                      ],),
                      SizedBox(height: 15,),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Image.asset('assets/orange_check.png',
                        width: 26,),
                        SizedBox(width: 12),
                        Text('Secure More than 1,000 Docs',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 8,
                        )),
                    
                      ],),
                      SizedBox(height: 15,),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Image.asset('assets/orange_check.png',
                        width: 26,),
                        SizedBox(width: 12),
                        Text('24/7 Customer Support',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 8,
                        )),
                    
                      ],),
                      SizedBox(height: 15,),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Image.asset('assets/orange_check.png',
                        width: 26,),
                        SizedBox(width: 12),
                        Text('Track Company Spending',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 8,
                        )),
                    
                      ],),
                      SizedBox(height:2),
                      Padding(
                        
                        padding: const EdgeInsets.only(top: 40, left: 0.5, right: 90),
                        child: Container(
                      
                          width: 200,
                          height: 45,
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
                                fontSize: 10,
                                fontWeight : FontWeight.w600,
                                
                          )),
                          SizedBox(width: 90,),
                          Image.asset('assets/button_arrow.png',
                          width: 25,)
                              ],
                            ))
                          ),
                      ),

                    ],),
                  ),
                        SizedBox(height: 20,),
                        Text('Contact Support',
                         style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 10,  
                          decoration: TextDecoration.underline,                                               
                        ),
                        textAlign: TextAlign.center,
                        )
                ],
              ),
            )
        ],
      )
    );
  }
}