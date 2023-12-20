import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:health/Resources/AppColors/app_colors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    return AppBar(
      backgroundColor: MyColors.purple,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
                      backgroundImage: AssetImage("assets/logo/harees_logo.png"),
                    ),
      ),
      // leading: Image.asset("assets/logo/harees_logo.png"),
      title: Text(
        "زیاد الغبین",
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
    );
  }
}
