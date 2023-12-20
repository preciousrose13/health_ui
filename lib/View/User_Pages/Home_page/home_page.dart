import 'package:flutter/material.dart';
import 'package:health/Resources/AppBar/app_bar.dart';
import 'package:health/Resources/Crousal_slider/crouser_slider.dart';
import 'package:health/Resources/Drawer/drawer.dart';
import 'package:health/Resources/Search_bar/search_bar.dart';
import 'package:health/Resources/Requests/user_requests.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(),

      endDrawer: MyDrawer(),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MySearchBar(),
              
              SizedBox(height: 20),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Our Services:',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              CarouselExample(),

              Requests(),
            ],
          ),
        ),
      ),
    );
  }
}
