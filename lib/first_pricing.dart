// ignore_for_file: prefer_const_constructors

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class FirstPricing extends StatefulWidget {
  const FirstPricing({Key? key}) : super(key: key);

  @override
  State<FirstPricing> createState() => _FirstPricingState();
}

class _FirstPricingState extends State<FirstPricing> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 30,
          right: 30,
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/crown.png',
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Which one you wish \nto upgrade?',
                style: GoogleFonts.poppins(
                  color: Color(0xff191919),
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      );
    }

    Widget options(
      int index,
      String imageUrl,
      String title,
      String description,
      String subDescription,
    ) {
      return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            width: 315,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                border: Border.all(
                  color: selectedIndex == index ?  Color(0xff6050E7) : Color(0xffD9DEEA))),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 17, bottom: 17),
              child: Row(
                children: [
                  Image.asset(
                    imageUrl,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.poppins(
                            color: Color(0xff191919),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              description,
                              style: GoogleFonts.poppins(
                                color: Color(0xffA3A888),
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              subDescription,
                              style: GoogleFonts.poppins(
                                color: Color.fromARGB(255, 135, 103, 153),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ), 
                                  
                  Padding(
                    padding: const EdgeInsets.only(left: 41.0, top: 10),
                    child: selectedIndex == index ?
                    Image.asset('assets/purple_check.png',
                    width: 26) : SizedBox(width: 26),
                  )
                ],
              ),
            ),
            
          ));
    }

    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Column(
          children: [
            header(),
            options(0,'assets/pig_icon.png','Money Security','suppor t','24/7'),
            SizedBox(height: 10,),
            options(1,'assets/paper_icon.png','Automation','we provide ','Invoice'),
             SizedBox(height: 10,),
            options(2,'assets/dollar_icon.png','Balance Report','can up to ','4K'),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff6050E7),
          items:  <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 15, left: 60),
                child: Text('Upgrade Now',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                )),
              ),
              label : '',
              ),            
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(
                  top: 15, 
                  left: 30, 
                  right: 126),
                child: Image.asset('assets/right_arrow.png',
                width: 24,),
              ),
              label : '',
              ),
          ],
        ) ,
        )
        ;
  }
}
