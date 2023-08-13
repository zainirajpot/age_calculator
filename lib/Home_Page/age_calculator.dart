import 'package:age_calculator/Custom_Widgets/TextFiled/textfiled_controller.dart';
import 'package:age_calculator/Custom_Widgets/all_text_calculte.dart';
import 'package:age_calculator/Custom_Widgets/app_colors.dart';
import 'package:age_calculator/Custom_Widgets/screen_sontainer.dart';
import 'package:age_calculator/Custom_Widgets/TextFiled/textformfiled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Custom_Widgets/text_widget.dart';

class AgeCalculator extends GetView<TextFiledController> {
  AgeCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 203, 197, 197),
        title: Center(
          child: TextWidgets(
            text: 'Age Calcultor',
            textfontWeight: FontWeight.w400,
            textcolor: AppColors.textcolor,
            size: 25,
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 203, 197, 197),
      body: Obx(
        () {
          return Padding(
            padding: const EdgeInsets.only(
              top: 5,
              left: 20,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomContainer(
                    height: height * 0.65,
                    width: width * 0.9,
                    bottomLeftRadius: 13,
                    bottomRightRadius: 13,
                    colors: AppColors.countcolor,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            CustomContainer(
                              height: height * 0.172,
                              width: width * 0.9,
                              colors: AppColors.blueCntainer,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 18, left: 25),
                                    child: TextWidgets(
                                        size: 25,
                                        text: 'BirthData',
                                        textcolor: AppColors.countcolor,
                                        textfontWeight: FontWeight.w500),
                                  ),
                                  CustomTextFormField(
                                    textdarkcolor: AppColors.textdarkcolor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.01),
                        TextWidgets(
                          size: 17,
                          text: 'You are (Your age right now)',
                          textcolor: AppColors.textcolor,
                          textfontWeight: FontWeight.w500,
                        ),
                        SizedBox(height: height * 0.02),
                        Padding(
                          padding: const EdgeInsets.only(left: 39),
                          child: Row(
                            children: [
                              CustomContainer(
                                colors: AppColors.blueCntainer,
                                height: height * 0.08,
                                width: width * 0.2,
                                bottomLeftRadius: 12,
                                bottomRightRadius: 12,
                                child: Center(
                                  child: Text(
                                    controller.ageYearsResult.value,
                                    style: const TextStyle(
                                        fontSize: 32,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.05),
                              CustomContainer(
                                colors: const Color.fromARGB(164, 158, 133, 20),
                                height: height * 0.08,
                                width: width * 0.2,
                                bottomLeftRadius: 12,
                                bottomRightRadius: 12,
                                child: Center(
                                  child: Text(
                                    controller.ageMonthsResult.value,
                                    style: const TextStyle(
                                        fontSize: 32,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.05),
                              CustomContainer(
                                colors: AppColors.greenContainer,
                                height: height * 0.08,
                                width: width * 0.2,
                                bottomLeftRadius: 13,
                                bottomRightRadius: 13,
                                child: Center(
                                  child: Text(
                                    controller.ageDaysResult.value,
                                    style: const TextStyle(
                                        fontSize: 32,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        Padding(
                          padding: const EdgeInsets.only(left: 58),
                          child: Row(
                            children: [
                              TextWidgets(
                                  textfontWeight: FontWeight.w600,
                                  size: 15,
                                  text: 'Years',
                                  textcolor: AppColors.textLightcolor),
                              SizedBox(width: width * 0.16),
                              TextWidgets(
                                  textfontWeight: FontWeight.w600,
                                  size: 15,
                                  text: 'Months',
                                  textcolor: AppColors.textLightcolor),
                              SizedBox(width: width * 0.14),
                              TextWidgets(
                                  textfontWeight: FontWeight.w600,
                                  size: 15,
                                  text: 'Days',
                                  textcolor: AppColors.textLightcolor),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 22, left: 12),
                          child: Divider(
                              indent: 4,
                              endIndent: 15,
                              color: Color.fromARGB(32, 0, 0, 0),
                              thickness: 2),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AllTextCalculte(
                                text: 'Months old',
                              ),
                              AllTextCalculte(
                                  text: controller.ageMonthsOldResult.value),
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.018),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AllTextCalculte(
                                text: 'Weeks old',
                              ),
                              AllTextCalculte(
                                  text: controller.ageWeeksOldResult.value)
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.018),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AllTextCalculte(text: 'Days old'),
                              AllTextCalculte(
                                  text: controller.ageOldDyasResult.value)
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.018),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AllTextCalculte(text: 'Hours old (approx)'),
                              AllTextCalculte( text: controller.ageHoursOldResult.value),    
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.018),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AllTextCalculte(
                                text: 'Minutes old (approx)',
                              ),
                              AllTextCalculte(
                                  text: controller.ageMinutesOldResult.value),
                            ],
                          ),
                        ),
                        SizedBox(height: height * 0.018),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AllTextCalculte(
                                text: 'Seconds old (approx)',
                              ),
                              AllTextCalculte(
                                  text: controller.ageSecondsOldResult.value),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: CustomContainer(
                      height: height * 0.167,
                      width: width * 0.90,
                      bottomRightRadius: 13,
                      bottomLeftRadius: 13,
                      colors: AppColors.greenContainer,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, top: 7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidgets(
                                textfontWeight: FontWeight.w400,
                                size: 22,
                                text: 'Next Birthday',
                                textcolor: AppColors.textcolor),
                            SizedBox(height: height * 0.014),
                            Row(
                              children: [
                                CustomContainer(
                                  height: height * 0.068,
                                  width: width * 0.135,
                                  bottomLeftRadius: 13,
                                  bottomRightRadius: 13,
                                  colors: AppColors.countcolor,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextWidgets(
                                        text: controller.nextYearMonth.value,
                                        size: 29,
                                        textcolor: AppColors.textcolor,
                                        textfontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(width: width * 0.039),
                                CustomContainer(
                                  height: height * 0.068,
                                  width: width * 0.135,
                                  bottomLeftRadius: 13,
                                  bottomRightRadius: 13,
                                  colors: AppColors.countcolor,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextWidgets(
                                        text: controller.nextYearDate.value,
                                        size: 29,
                                        textcolor: AppColors.textcolor,
                                        textfontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(width: width * 0.2),
                                Column(
                                  children: [
                                    TextWidgets(
                                        textfontWeight: FontWeight.w500,
                                        size: 16,
                                        text: 'Your Birthday is on',
                                        textcolor: AppColors.textcolor),
                                    TextWidgets(
                                        textfontWeight: FontWeight.w600,
                                        size: 23,
                                        text: controller.nextYearWeekDay.value,
                                        textcolor: AppColors.textcolor),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, top: 14),
                              child: Row(
                                children: [
                                  AllTextCalculte(text: 'Months'),
                                  SizedBox(width: width * 0.08),
                                  AllTextCalculte(text: 'Days'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
