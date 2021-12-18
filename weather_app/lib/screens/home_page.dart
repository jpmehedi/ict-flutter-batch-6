import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.withOpacity(0.10),
      body: SingleChildScrollView(
        child: Column(
          children: [   
            Container(
              child: Column(
                children: [
                  Text(
                    "Pasuruan",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "17.45 PM",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20,),
                  CarouselSlider(
                    options: CarouselOptions(height: 400.0),
                    items: [1,2,3,4,5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return DailyWeatherCard();
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            
            Container(
              color: Color(0xff928ACE).withOpacity(0.25),
              child: Column(
                children: [
                 Transform.translate(
                   offset: Offset(0, -60),
                   child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 122,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          WeatherDetails(
                            imageName: "carbon_humidity",
                            value: "75%",
                            level: "Humidity",
                          ),
                          WeatherDetails(
                            imageName: "tabler_wind",
                            value: "8 km/h",
                            level: "Wind",
                          ),
                          WeatherDetails(
                            imageName: "ion_speedometer",
                            value: "1011",
                            level: "Air Pressure",
                          ),
                          WeatherDetails(
                            imageName: "ic_round-visibility",
                            value: "6 km",
                            level: "Visibility",
                          ), 
                        ],
                      ),
                    ),
                 ),
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Next 7 Days",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios
                          ) 
                        ],
                      )
                    ],
                  ),
                ),
          
                Container(
                  height: 132,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return HourlyWeatherCard();
                    }
                  ),
                )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HourlyWeatherCard extends StatelessWidget {
  const HourlyWeatherCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      height: 132,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff594DB5),
            Color(0xff928ACE),
            Color(0xff594DB5)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
        borderRadius: BorderRadius.circular(25)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "06:00 AM",
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.bold
            ),
          ),
          Image.asset(
            "assets/moon_cloud_fast_wind.png",
            scale: 4,
          ),
          Text(
            "23°",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}

class WeatherDetails extends StatelessWidget {
  final String? imageName;
  final String? value;
  final String? level;
  const WeatherDetails({
    Key? key, this.imageName, this.level, this.value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/$imageName.png"),
        Text(
          "$value",
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          "$level",
          style: TextStyle(
            color: Color(0xffC8C5F4),
            fontSize: 12,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}

class DailyWeatherCard extends StatelessWidget {
  const DailyWeatherCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 300,
          width: 230,
        ),
        Positioned(
          top: 20,
          child: Container(
            width: 230,
            height: 275,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff594DB5),
                  Color(0xff928ACE),
                  Color(0xff594DB5)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
              borderRadius: BorderRadius.circular(40)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/moon_cloud_fast_wind.png",
                  scale: 1.8,
                ),
                Text(
                  "23°",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 72,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Moon Cloud Fast Wind",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
        ),
       Positioned(
         top: 0,
         child: Container(
            height: 34,
            width: 132,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40)
            ),
            child: Center(
              child: Text(
                "Sunday, 8 March 2021",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
       ),
      ],
    );
  }
}