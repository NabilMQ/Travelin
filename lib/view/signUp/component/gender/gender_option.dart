import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:travelin/view/signUp/sign_up.dart';

class GenderOption extends StatefulWidget {
  const GenderOption({ super.key });

  @override
  State <GenderOption> createState() => _GenderOptionState();
}

class _GenderOptionState extends State<GenderOption> {
   @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Flexible(
      flex: 1,
      child: SizedBox(
        width: size.width,
        height: 50,
        child: ValueListenableBuilder(
          valueListenable: isUserGenderError,
          builder: (context, isUserGenderErrorValue, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ValueListenableBuilder(
                  valueListenable: userGender,
                  builder: (context, userGenderValue, child) {
                    return Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Radio(
                            value: "Laki-Laki",
                            groupValue: userGender.value,
                            fillColor: MaterialStatePropertyAll(isUserGenderErrorValue ? getRedColor : userGenderValue == "Laki-Laki" ? getOrangeColor : getGreyColor),
                            onChanged: (value) {
                              userGender.value = value;
                              isUserGenderError.value = false;
                            },
                          ),
                    
                          Text(
                            "Laki-Laki",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: getCustomFont,
                              fontWeight: FontWeight.normal,
                              color: isUserGenderErrorValue ? getRedColor : userGenderValue == "Laki-Laki" ? getOrangeColor : getGreyColor,  
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
            
                ValueListenableBuilder(
                  valueListenable: userGender,
                  builder: (context, userGenderValue, child) {
                    return Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio(
                            value: "Perempuan",
                            groupValue: userGender.value,
                            fillColor: MaterialStatePropertyAll(isUserGenderErrorValue ? getRedColor : userGenderValue == "Perempuan" ? getOrangeColor : getGreyColor),
                            onChanged: (value) {
                              userGender.value = value;
                              isUserGenderError.value = false;
                            },
                          ),
                    
                          Text(
                            "Perempuan",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: getCustomFont,
                              fontWeight: FontWeight.normal,
                              color: isUserGenderErrorValue ? getRedColor : userGenderValue == "Perempuan" ? getOrangeColor : getGreyColor,  
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}