import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:travelin/view/signUp/sign_up.dart';

class DateOfBirthTextField extends StatefulWidget {
  const DateOfBirthTextField({ super.key });

  @override
  State <DateOfBirthTextField> createState() => _DateOfBirthTextFieldState();
}

class _DateOfBirthTextFieldState extends State<DateOfBirthTextField> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Flexible(
      flex: 3,
      child: ValueListenableBuilder(
        valueListenable: isDateOfBirthError, 
        builder: (context, isDateOfBirthErrorValue, child) {
          return ValueListenableBuilder(
            valueListenable: isDateOfBirthFocused,
            builder: (context, isDateOfBirthFocusedValue, child) {
              return Container(
                width: size.width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: isDateOfBirthErrorValue ? getRedColor : isDateOfBirthFocusedValue ? getOrangeColor : getGreyColor,
                        blurRadius: 5,
                        spreadRadius: 0,
                      ),
                    ],
                    color: getWhiteColor,
                  ),
                child: TextField(
                  controller: dateOfBirthController,
                  focusNode: dateOfBirthFocus,
                  keyboardType: TextInputType.none,
                  readOnly: true,
                  onTap: () async {
                    dateOfBirth = await showDatePicker(
                      context: context,
                      initialDate: choosedDate,
                      firstDate: DateTime.fromMillisecondsSinceEpoch(0),
                      lastDate: DateTime.now(),
                      currentDate: choosedDate,
                      barrierDismissible: false,
                    ) ?? choosedDate;

                    if (dateOfBirth != null) {
                      choosedDate = dateOfBirth!;
                      dateOfBirthController.text = "${choosedDate!.year}-";
                      if (choosedDate!.month < 10) {
                        dateOfBirthController.text += "0${choosedDate!.month}-";
                      }
                      else {
                        dateOfBirthController.text += "${choosedDate!.month}";
                      }

                      if (choosedDate!.day < 10) {
                        dateOfBirthController.text += "0${choosedDate!.day}";
                      }
                      else {
                        dateOfBirthController.text += "${choosedDate!.day}";
                      }
                    }
                  },
                  onSubmitted: (value) {
                    if (value == "") {
                      isDateOfBirthError.value = true;
                    }
                    else {
                      isDateOfBirthError.value = false;
                    }
                  },
                  onChanged: (value) {
                    if (value != "") {
                      isDateOfBirthError.value = false;
                    }
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(15),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                    hintText: "Tanggal Lahir",
                    hintStyle: TextStyle(
                      color: isDateOfBirthErrorValue? getRedColor : isDateOfBirthFocusedValue ? getOrangeColor : getGreyColor,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      fontFamily: getCustomFont,  
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}