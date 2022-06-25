import 'package:bwadesigntocodeday6/second_pricing.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const SevenDays());
}

class SevenDays extends StatelessWidget {
  const SevenDays({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Seven Days Flutter Demo',
        home: SecondPricing(
       
        )
        );
  }
}
