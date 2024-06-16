import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
          return Container(
            width: size.width,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: isDateOfBirthErrorValue ? getRedColor : getGreyColor,
                    blurRadius: 5,
                    spreadRadius: 0,
                  ),
                ],
                color: getWhiteColor,
              ),
            child: TextField(
              controller: dateOfBirthController,
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
                  isDateOfBirthError.value = false;
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
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    "assets/icons/Arrow Down.svg",
                    fit: BoxFit.scaleDown,
                    colorFilter: isDateOfBirthErrorValue ? ColorFilter.mode(getRedColor, BlendMode.srcIn) : ColorFilter.mode(getGreyColor, BlendMode.srcIn),
                  ),
                ),
                contentPadding: const EdgeInsets.all(15),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none
                ),
                hintText: "Tanggal Lahir",
                hintStyle: TextStyle(
                  color: isDateOfBirthErrorValue? getRedColor : getGreyColor,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  fontFamily: getCustomFont,  
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}