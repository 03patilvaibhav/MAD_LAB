// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'navbar.dart';
// import 'dart:convert' as convert;

// class Profile extends StatefulWidget {
//   const Profile({Key? key}) : super(key: key);

//   @override
//   State<Profile> createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   var user_name, email_id, phone, city;
//   int dataAccessLevel = 2;
//   // void getData() async {
//   //   await Future.delayed(Duration(seconds: 3), (){
//   //     priprofilent("Response after 3 second");
//   //   });
//   //
//   //   print("Within getData ...after Future Delayed");
//   //
//   // }

//   void getData() async {
//     var url = Uri.https('jsonplaceholder.typicode.com', '/users/3');
//     Response response = await get(url);
//     if (response.statusCode == 200) {
//       var jsonResponse = convert.jsonDecode(response.body);

//       setState(() {
//         user_name = jsonResponse['name'];
//         email_id = jsonResponse['email'];
//         phone = jsonResponse['phone'];
//         city = jsonResponse['city'];
//       });
//       print(user_name);
//     } else {
//       print('Request failed with status: ${response.statusCode}.');
//       user_name = "";
//       email_id = "";
//       phone = "";
//       city = "";
//     }
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     print("Within Init State Function");
//     getData();
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     print("Within Dispose Function");
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("Within Build Function");

//     return Scaffold(
//       // drawer: NavBar(),

//       appBar: AppBar(
//         title: Text("Profile Card"),
//         centerTitle: true,
//         backgroundColor: Colors.grey[850],
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           // Center(
//           //     child: CircleAvatar(
//           //       radius: 50.0,
//           //
//           //       backgroundImage: AssetImage('assets/image/profile/male_profile.png'),
//           //     )
//           // ),
//           SizedBox(
//             height: 20.0,
//           ),
//           Divider(
//             color: Colors.red[850],
//             height: 30.0,
//             thickness: 2.0,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Icon(
//                 Icons.account_circle_sharp,
//               ),
//               SizedBox(
//                 width: 20.0,
//               ),
//               Text(
//                 "Name",
//                 style: TextStyle(
//                   fontSize: 25.0,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey[800],
//                 ),
//               ),
//             ],
//           ),
//           Text(
//             "$user_name",
//             style: TextStyle(
//               fontSize: 25.0,
//               color: Colors.blue[800],
//             ),
//           ),
// // Replicated

//           SizedBox(
//             height: 20.0,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Icon(
//                 Icons.phone,
//               ),
//               SizedBox(
//                 width: 20.0,
//               ),
//               Text(
//                 "Phone",
//                 style: TextStyle(
//                   fontSize: 25.0,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey[800],
//                 ),
//               ),
//             ],
//           ),
//           Text(
//             "$phone",
//             style: TextStyle(
//               fontSize: 25.0,
//               color: Colors.blue[800],
//             ),
//           ),

//           SizedBox(
//             height: 20.0,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Icon(
//                 Icons.email,
//               ),
//               SizedBox(
//                 width: 20.0,
//               ),
//               Text(
//                 "Email",
//                 style: TextStyle(
//                   fontSize: 25.0,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey[800],
//                 ),
//               ),
//             ],
//           ),
//           Text(
//             "$email_id",
//             style: TextStyle(
//               fontSize: 25.0,
//               color: Colors.blue[800],
//             ),
//           ),

//           SizedBox(
//             height: 20.0,
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Profile(),
    ));

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Profile Page Grp-08'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage('assets/images/male_profile.jpg'),
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'vaibhav Nikhil Tejas',
              style: TextStyle(
                color: Colors.blue[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Address',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Mumbai,Malad,sion',
              style: TextStyle(
                color: Colors.blue[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Contact',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '8657267820',
              style: TextStyle(
                color: Colors.blue[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  '320vaibhav0022@dbit.in',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
