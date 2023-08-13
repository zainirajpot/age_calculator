import 'package:age_calculator/Custom_Widgets/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'textfiled_controller.dart';

class CustomTextFormField extends StatelessWidget {
  final TextFiledController controller = Get.put(TextFiledController());
  final Color textdarkcolor;
  

  CustomTextFormField({
    required this.textdarkcolor,
  });

  @override
  
  Widget build(BuildContext context) {
    
    // Create a TextEditingController
    final dateController = TextEditingController();

    //  \ TextEditingController when selectedDate changes
    // ever(controller.selectedDate, (DateTime newDate) {
    //  dateController
    //   = newDate.toString() ?? '';
    // });

    return Padding(
      padding: const EdgeInsets.only(top: 14, left: 25, right: 25),
      child: TextFormField(
        controller: dateController, // Bind the TextEditingController
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              controller.selectDate(context);
            },
            icon: const Icon(
              Icons.date_range,
              size: 30,
              color: Color.fromARGB(210, 32, 4, 117),
            ),
          ),
          hintText: 'Enter birth data',
          fillColor: AppColors.countcolor,
          hintStyle: const TextStyle(
            color: Color.fromARGB(220, 85, 84, 84),
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 15, 9, 193),
              strokeAlign: 7,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 22),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 15, 9, 193),
              strokeAlign: 7,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
