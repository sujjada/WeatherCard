import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/weather_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF1F0FA),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            
            ),
            Text(
              "Parsuruan",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "17.45",
            ),
            SizedBox(
              height: 32,
            ),
            CarouselSlider(    options: CarouselOptions(height: 400.0),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return WeatherCard();
                  },
                );
              }).toList(),)
     
    
          ],
        ),
        
      ),
    );
  }
}