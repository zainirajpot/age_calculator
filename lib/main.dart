import 'package:age_calculator/Home_Page/age_calculator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AgeCalculator(),
    );
  }
}

//   calculateAge(DateTime birthDate) {
//   DateTime currentDate = DateTime.now();
//   int age = currentDate.year - birthDate.year;
//   int month1 = currentDate.month;
//   int month2 = birthDate.month;
//   if (month2 > month1) {
//     age--;
//   } else if (month1 == month2) {
//     int day1 = currentDate.day;
//     int day2 = birthDate.day;
//     if (day2 > day1) {
//       age--;
//     }
//   }
//   return age;
// }