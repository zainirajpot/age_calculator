import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFiledController extends GetxController {
  var selectedDate = DateTime.now().obs;
  var ageYearsResult = ''.obs;
  var ageMonthsResult = ''.obs;
  var ageDaysResult = ''.obs;
  var ageMonthsOldResult = ''.obs;
  var ageWeeksOldResult = ''.obs;
  var ageOldDyasResult = ''.obs;
  var ageHoursOldResult = ''.obs;
  var ageSecondsOldResult = ''.obs;
  var ageMinutesOldResult = ''.obs;
  var nextYearMonth = ''.obs;
  var nextYearDate = ''.obs;
  var nextYearWeekDay = ''.obs;

  void selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate.value,
    //  initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null) {
      calculateAge(pickedDate);
    }
  }
  
  //selectedDate.toString();
  //  print(selectedDate.value.toString());
  // DatePicker(context) {

  //   showDatePicker(

  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(1900),
  //     lastDate: DateTime.now(),

  //   ).then((pickedDate) {
  //     if (pickedDate != null) {
  //       calculateAge(pickedDate);
  //     }
  //   });
  // }

  void calculateAge(DateTime birth) {
    DateTime now = DateTime.now();
    Duration age = now.difference(birth);
    int years = age.inDays ~/ 365;
    int months = (age.inDays % 365) ~/ 30;
    int days = (age.inDays % 365) % 30;

    int totalMonths = years * 12 + months;
    int weeks = age.inDays ~/ 7;
    int hours = age.inHours;
    int minutes = age.inMinutes;
    int seconds = age.inSeconds;
    int oldDays = age.inDays;
    // String nextYearMonths = birth.month.toString() + "-";
    // String nextYearDates = birth.day.toString();
    int nextYearWeekdayIndex = (birth.weekday + 1) % 7;
    DateTime nextBirthday = DateTime(now.year, birth.month, birth.day);
    if (nextBirthday.isBefore(now)) {
      nextBirthday = DateTime(now.year + 1, birth.month, birth.day);
    }
    Duration timeUntilNextBirthday = nextBirthday.difference(now);

    int nextBirthdayMonthsCount = timeUntilNextBirthday.inDays ~/ 30;
    int nextBirthdayDaysCount = timeUntilNextBirthday.inDays % 30;

    List<String> weekdays = [
      "Sunday",
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday"
    ];
    String nextYearWeekDays = weekdays[nextYearWeekdayIndex];

    ///selectedDate.value='$DatePicker'
    ageYearsResult.value = '$years  ';

    ageDaysResult.value = "$days ";
    ageMonthsResult.value = '$months ';
    ageMonthsOldResult.value = '$totalMonths';
    ageWeeksOldResult.value = '$weeks ';
    ageOldDyasResult.value = '$oldDays ';
    ageHoursOldResult.value = '$hours ';
    ageMinutesOldResult.value = '$minutes';
    ageSecondsOldResult.value = '$seconds';
    nextYearDate.value = '$nextBirthdayDaysCount';
    nextYearMonth.value = '$nextBirthdayMonthsCount';
    nextYearWeekDay.value = nextYearWeekDays;
  }
}
