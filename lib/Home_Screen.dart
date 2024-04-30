import 'package:flutter/material.dart';
import 'package:flutter6_live_class/profile.dart';
import 'package:flutter6_live_class/settings.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key,});



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
              ).then((value){
                print(value);
              });
            }, child: Text('Go to settings')),

            SizedBox(height: 20, ),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Profile(userName: 'Eshita',)
                    ),
                  );
                },
                child: Text('Go to profile'))
          ],
        ),
      ),
    );
  }
}