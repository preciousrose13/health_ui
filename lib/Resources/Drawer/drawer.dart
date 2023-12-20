import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:health/Resources/AppColors/app_colors.dart';
import 'package:health/View/Designation%20Registration/designation.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            
            decoration: BoxDecoration(
              
              color: MyColors.purple,
            ),
            child: Center(
              child: Text(
                "Harees",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),

          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Your Account"),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {
              FirebaseAuth.instance.signOut();
            },
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              
              onPressed: () {
                Get.to(Designation());
              }, 
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(MyColors.purple),
              ),
              child: Text("Join As Service Provider",
              style: TextStyle(color: Colors.white, fontSize: 16,)),
          ),

      ),
      ],
      ),
    );

  }
}