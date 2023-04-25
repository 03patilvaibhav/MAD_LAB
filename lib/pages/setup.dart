import 'package:flutter/material.dart';
import 'package:mad_lab/util/storage.dart';
import 'package:mad_lab/navbar.dart';
import 'package:mad_lab/about.dart';
import 'package:mad_lab/profile.dart';
import '../widgets/componenets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setup extends StatefulWidget {
  @override
  _SetupState createState() => _SetupState();
}

class _SetupState extends State<Setup> {
  // from key
  final _dataFrom = GlobalKey<FormState>();
  // input field controller
  final channelTextController = TextEditingController();
  final fieldTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _changePage();
  }

  // chnage page if data saved
  void _changePage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? status = prefs.getBool(StorageKeys.SAVE_STATUS);
    if (status != null && status) {
      Navigator.pop(context);
      Navigator.pushNamed(context, '/sub');
    }
  }

  // save data and change page
  void _saveData() async {
    if (_dataFrom.currentState!.validate()) {
      print('Valid');

      // save data
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString(StorageKeys.CHANNEL_ID, channelTextController.text);
      prefs.setInt(
          StorageKeys.FIELD_COUNT, int.parse(fieldTextController.text));
      prefs.setBool(StorageKeys.SAVE_STATUS, true);

      // change page
      Navigator.pop(context);
      Navigator.pushNamed(context, '/sub');
    } else {
      print('Invalid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('My Profile'),
              onTap: () {
                Navigator.pop(context); // close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () {
                Navigator.pop(context); // close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Aboutus()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(
            top: 32.0,
            bottom: 70.0,
            left: 16.0,
            right: 16.0,
          ),
          children: [
            Heading(false),
            SubHeading('Setup'),
            SizedBox(
              height: 20.0,
            ),
            Form(
              key: _dataFrom,
              child: setForm(),
            )
          ],
        ),
      ),
    );
  }

  // from layout
  Widget setForm() {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, right: 32.0, top: 32.0),
      child: Column(
        children: [
          // channel id
          TextFormField(
            controller: channelTextController,
            decoration: InputDecoration(
              labelText: 'Channel ID',
              hintText: 'Your Chennel ID (Eg: 1385093)',
            ),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value!.isEmpty) return 'Channel ID cannot be empty!';
              if (value.contains(RegExp(r'[A-Z]')) ||
                  value.contains(RegExp(r'[a-z]')))
                return 'Channel ID must be number!';
              return null;
            },
          ),
          SizedBox(
            height: 5.0,
          ),

          // number of field
          TextFormField(
            controller: fieldTextController,
            decoration: InputDecoration(
              labelText: 'Total Field',
              hintText: 'No of Field: (Eg: 2)',
            ),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value!.isEmpty) return 'No of Field cannot be empty!';
              if (int.parse(value) == 0) return 'No of Field cannot be zero!';
              if (value.contains(RegExp(r'[A-Z]')) ||
                  value.contains(RegExp(r'[a-z]')))
                return 'No of Field must be number!';
              return null;
            },
          ),
          SizedBox(
            height: 32.0,
          ),

          // button to save
          ElevatedButton(
            onPressed: _saveData,
            child: Text('Subscribe Channel'),
            style: TextButton.styleFrom(minimumSize: Size(100.0, 40.0)),
          ),
          SizedBox(
            height: 20.0,
          ),
          //   ElevatedButton(onPressed: () {
          //   Navigator.of(context).pushNamed('profile');
          // }, child:Text('Register', style: TextStyle(color: Colors.black)))
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    channelTextController.dispose();
    fieldTextController.dispose();
    super.dispose();
  }
}
