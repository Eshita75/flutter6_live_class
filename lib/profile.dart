import 'package:flutter/material.dart';
import 'package:flutter6_live_class/Home_Screen.dart';
import 'package:flutter6_live_class/settings.dart';

class Profile extends StatelessWidget{
  const Profile({super.key, required this.userName});
  final String userName;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userName),
            ElevatedButton(onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomeScreen()), (route) => false);
            }, child: Text('Back to home')),

            SizedBox(height: 20, ),

            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
                child: Text('Go to Settings'))
          ],
        ),
      ),
    );
  }
}