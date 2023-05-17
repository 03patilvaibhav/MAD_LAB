// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import "package:mad_lab/firebutton.dart";

// class resetPassword extends StatefulWidget {
//   const resetPassword({Key? key}) : super(key: key);

//   @override
//   _resetPasswordState createState() => _resetPasswordState();
// }

// class _resetPasswordState extends State<resetPassword> {
//   TextEditingController _emailTextController = TextEditingController();
//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(
//               'assets/login.png',
//             ),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Scaffold(
//           backgroundColor: Colors.transparent,
//           body: Stack(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.only(
//                       top: 60.0,
//                     ),
//                     child: Text(
//                       'RESET \n NOW',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 40.0,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SingleChildScrollView(
//                 child: Container(
//                   padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.height * 0.5,
//                     left: 35,
//                     right: 35,
//                   ),
//                   child: Column(
//                     children: [
//                       TextFormField(
//                         obscureText: false,
//                         decoration: InputDecoration(
//                           labelText: 'Email',
//                           prefixIcon: Icon(Icons.email_outlined),
//                           fillColor: Colors.grey.shade100,
//                           filled: true,
//                           // hintText: 'Password',
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 30.0),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           firebaseUIButton(context, "Reset Password", () {
//                             FirebaseAuth.instance
//                                 .sendPasswordResetEmail(
//                                     email: _emailTextController.text)
//                                 .then((value) => Navigator.pushNamed(context, 'forgot'));
//                           })
//                         ],
//                       ),
//                       SizedBox(height: 30.0),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:madlab/utils/color_utils.dart';
import 'package:mad_lab/firebutton.dart';
// import 'package:madlab/homepage.dart';
import 'package:mad_lab/color.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Reset Password",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            // hexStringToColor("CB2B93"),
            hexStringToColor("5E61F4"),
            hexStringToColor("ADD8E6")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Email Id", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                firebaseUIButton(context, "Reset Password", () {
                  FirebaseAuth.instance
                      .sendPasswordResetEmail(email: _emailTextController.text)
                      .then(
                          (value) => Navigator.pushNamed(context, 'login'));
                })
              ],
            ),
          ))),
    );
  }
}
