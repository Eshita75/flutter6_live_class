//navigation(push, pop, removeUntill, replace) without named navigation

import 'package:flutter/material.dart';
import 'package:flutter6_live_class/Home_Screen.dart';

main() {
  runApp(MyApp() /*create instance of MyApp class*/);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // use direct instance of class just constuctor but not use MaterialApp mat = MaterialApp();
      title: 'Hello World',
      home:HomeScreen(),//create instance of Home class
    );
  }
}

//TODO: HomeScreen
/*class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Settings();
                  },
                ),
              );
            }, child: Text('Go to settings')),

            SizedBox(height: 20, ),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile()
                    ),
                  );
                },
                child: Text('Go to profile'))
          ],
        ),
      ),
    );
  }
}*/

//TODO: Settings Screen
/*class Settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back to previous page')),

            SizedBox(height: 20, ),

            ElevatedButton(onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomeScreen()), (route) => false);

            }, child: Text('Go to Home'))
          ],
        ),
      ),
    );
  }
}*/


//TODO: profile screen
/*class Profile extends StatelessWidget{
  const Profile({super.key});

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
}*/


