import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health/Resources/Designation_Dropdown/dropdown.dart';
import 'package:health/View/Service%20Provider/Provider_home/service_provider_home.dart';
import 'package:health/Resources/Button/mybutton.dart';

class Designation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/logo/harees_logo.png"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text("Joining as a Service Provider",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          ),
                        ),
                    
                    SizedBox(
                      height: 20,
                    ),

                    TextFormField(
                      validator: (value){
                                if(value==null||value.isEmpty){
                                  return "Please Enter Your Name";
                                }
                                return null;
                              },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: "Your Name",
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    TextFormField(
                      validator: (value){
                                if(value==null||value.isEmpty){
                                  return "Please Enter Your Phone Number";
                                }
                                return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: "Your Phone Number",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                    MyDropdown(),
                   
                    SizedBox(
                      height: 10,
                    ),

                    TextFormField(
                      validator: (value){
                                if(value==null||value.isEmpty){
                                  return "Please Enter Your CNIC";
                                }
                                return null;
                              },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: "Your CNIC",
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                RoundButton(
                  text: "Join",
                  onTap: () {
                    Get.to(Service_Provider_Home());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
