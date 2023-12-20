import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:health/View/User_Pages/Doctor_visit/doctor_visit.dart';
import 'package:health/View/User_Pages/Laboratory/laboratory.dart';
import 'package:health/View/User_Pages/Nurse_visit/nurse_visit.dart';
import 'package:health/View/User_Pages/Vitamin_IV_drips_and_fluids/Vitamin_IV_drips_and_fluids.dart';
import 'package:health/View/User_Pages/virtual_consultation/virtual_consultation.dart';

class CarouselExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enlargeCenterPage: true,
        autoPlay: true,
        height: 200,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
      items: [
        _buildCarouselItem(
          "249 SAR",
          "30% Discount for the first order",
          const Color.fromARGB(255, 7, 110, 194),
          Colors.white,
          Icons.medical_services_outlined,
          "Doctor Visit",
          () => Get.to(() => DoctorVisit()),
        ),
        _buildCarouselItem(
          "199 SAR",
          "30% Discount for the first order",
          Color.fromARGB(255, 217, 134, 0),
          Colors.white,
          Icons.science_outlined,
          "Laboratory",
          () => Get.to(() => Laboratory()),
        ),
        _buildCarouselItem(
          "149 SAR",
          "30% Discount for the first order",
          Colors.red,
          Colors.white,
          Icons.videocam_outlined,
          "Virtual Consultation",
          () => Get.to(() => VirtualConsultation()),
        ),
        _buildCarouselItem(
          "229 SAR",
          "30% Discount for the first order",
          Colors.purple,
          Colors.white,
          Icons.healing_outlined,
          "Nurse Visit",
          () => Get.to(() => NurseVisit()),
        ),
        _buildCarouselItem(
          "179 SAR",
          "30% Discount for the first order",
          const Color.fromARGB(255, 8, 85, 11),
          Colors.white,
          Icons.opacity_outlined,
          "Vitamin IV drips and fluids",
          () => Get.to(() => VitaminDrips()),
        ),
      ],
    );
  }

  Widget _buildCarouselItem(
    String heading,
    String description,
    Color upperPartColor,
    Color lowerPartColor,
    IconData iconData,
    String slideHeading,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        child: Container(
          width: 300,
          margin: EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Upper Part
              Container(
                width: 300,
                color: upperPartColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        iconData,
                        size: 24.0,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        slideHeading,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        heading,
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Lower Part
              Container(
                width: 300,
                color: lowerPartColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
