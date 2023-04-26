import 'package:flutter/material.dart';
import 'navbar.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: NavBar(),
      appBar: AppBar(
        title: Text("About Us"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
        child: Text(
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              // letterSpacing: 2.0,
            ),
            "Maintaining a comfortable and healthy indoor temperature is essential for our well-being. However, traditional thermometers only give a static reading of the room temperature, which may not accurately reflect the current temperature. Moreover, manually checking the thermometer can be cumbersome, especially when you're in a different room or away from home.To address this issue, we propose to develop an Android app, Smart-Therm that can monitor and display real-time temperature data from various locations in a room. The app will use the sensors on the user's phone to detect the temperature and display it in an easy-to-read interface. The app will also allow the user to set temperature thresholds and receive alerts when the temperature goes beyond the set limits. This app will be useful for homeowners, office workers, and anyone who needs to maintain a comfortable and healthy indoor temperature."),
      ),
    );
    ;
  }
}
