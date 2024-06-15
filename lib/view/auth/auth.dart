import 'package:flutter/material.dart';
import 'package:travelin/controller/auth_controller.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/view/getStarted/get_started.dart';

class Auth extends StatefulWidget {
  const Auth({ Key? key }) : super(key: key);

  @override
  State <Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {

  @override
  void initState() {
    super.initState();
    getEmailFocus.addListener(onEmailFocusChange);
    getPasswordFocus.addListener(onPasswordFocusChange);
  }

  @override
  void dispose() {
    isNextPage = false;
    getEmailFocus.removeListener(onEmailFocusChange);
    getPasswordFocus.removeListener(onPasswordFocusChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: getWhiteColor,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          width: size.width,
          height: size.height,
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: Image.asset(
                    "assets/images/Get Started (4).jpg", 
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
          
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    "Masuk",
                                    style: TextStyle(
                                      color: getBlackColor,
                                      fontFamily: getCustomFont,
                                      fontSize: 35,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                
                                const SizedBox(height: 10),
                
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    "Silahkan masukkan email dan\npassword anda",
                                    style: TextStyle(
                                      color: getBlackColor,
                                      fontFamily: getCustomFont ,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
        
                          const SizedBox(height: 10),
          
                          Expanded(
                            flex: 1,
                            child: ValueListenableBuilder(
                              valueListenable: getIsEmailError,
                              builder: (context, isEmailErrorValue, child) {
                                return ValueListenableBuilder(
                                  valueListenable: getIsEmailFocused,
                                  builder: (context, isEmailFocusedValue, child) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: isEmailErrorValue ? getRedColor : isEmailFocusedValue ? getOrangeColor : getGreyColor,
                                            blurRadius: 5,
                                            spreadRadius: 0,
                                          ),
                                        ],
                                        color: getWhiteColor,
                                      ),
                                      child: Center(
                                        child: TextField(
                                          controller: getEmailController,
                                          focusNode: getEmailFocus,
                                          keyboardType: TextInputType.emailAddress,
                                          onSubmitted: (value) {
                                            if (!validateEmail(value)) {
                                              getIsEmailError.value = true;
                                            }
                                            else {
                                              getIsEmailError.value = false;
                                            }
                                          },
                                          onChanged: (value) {
                                            if (validateEmail(value)) {
                                              getIsEmailError.value = false;
                                            }
                                          },
                                          decoration: InputDecoration(
                                            contentPadding: const EdgeInsets.all(15),
                                            border: const OutlineInputBorder(
                                              borderSide: BorderSide.none
                                            ),
                                            suffixIcon: isEmailErrorValue ? 
                                            Expanded(
                                              flex: 1,
                                              child: FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "Wrong email format",
                                                      style: TextStyle(
                                                        color: getRedColor,
                                                        fontFamily: getCustomFont,
                                                        fontSize: 9,
                                                        fontWeight: FontWeight.normal,
                                                      ),
                                                    ),
                                                                                  
                                                    const SizedBox(width: 10),
                                                                                  
                                                    SvgPicture.asset("assets/icons/Red Alert.svg"),
                                                                                  
                                                    const SizedBox(width: 10),
                                                  ],
                                                ),
                                              ),
                                            ) : const SizedBox.shrink(),
                                            hintText: "Email",
                                            hintStyle: TextStyle(
                                              color: isEmailErrorValue ? getRedColor : isEmailFocusedValue ? getOrangeColor : getGreyColor,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: getCustomFont,  
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),

                          const SizedBox(height: 10),
          
                          Expanded(
                            flex: 1,
                            child: ValueListenableBuilder(
                              valueListenable: getIsPasswordError,
                              builder: (context, isPasswordErrorValue, child) {
                                return ValueListenableBuilder(
                                  valueListenable: getIsPasswordFocused,
                                  builder: (context, isPasswordFocusedValue, child) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: isPasswordErrorValue ? getRedColor : isPasswordFocusedValue ? getOrangeColor : getGreyColor,
                                            blurRadius: 5,
                                            spreadRadius: 0,
                                          ),
                                        ],
                                        color: getWhiteColor,
                                      ),
                                      child: Center(
                                        child: ValueListenableBuilder(
                                          valueListenable: getIsPasswordHidden,
                                          builder: (context, isPasswordHiddenValue, child) {
                                            return TextField(
                                              controller: getPasswordController,
                                              focusNode: getPasswordFocus,
                                              obscureText: isPasswordHiddenValue,
                                              onSubmitted: (value) {
                                                if (validatePassword(value)) {
                                                  getIsPasswordError.value = true;
                                                }
                                                else {
                                                  getIsPasswordError.value = false;
                                                }
                                              },
                                              onChanged: (value) {
                                                if (!validatePassword(value)) {
                                                  getIsPasswordError.value = false;
                                                }
                                              },
                                              decoration: InputDecoration(
                                                contentPadding: const EdgeInsets.all(15),
                                                border: const OutlineInputBorder(
                                                  borderSide: BorderSide.none
                                                ),
                                                suffixIcon: Container(
                                                  width: size.width * 0.5,
                                                  alignment: Alignment.centerRight,
                                                  padding: const EdgeInsets.all(15),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      isPasswordErrorValue ? 
                                                      Expanded(
                                                        flex: 8,
                                                        child: FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                "Minimum password length is 8 character",
                                                                style: TextStyle(
                                                                  color: getRedColor,
                                                                  fontFamily: getCustomFont,
                                                                  fontSize: 9,
                                                                  fontWeight: FontWeight.normal,
                                                                ),
                                                              ),

                                                              const SizedBox(width: 10),

                                                              SvgPicture.asset("assets/icons/Red Alert.svg"),

                                                              const SizedBox(width: 10),
                                                            ],
                                                          ),
                                                        ),
                                                      ) : const SizedBox.shrink(),

                                                      Expanded(
                                                        flex: 1,
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            getIsPasswordHidden.value = !getIsPasswordHidden.value;
                                                          },
                                                          child: SvgPicture.asset(
                                                            isPasswordHiddenValue ? "assets/icons/Close Eye Black.svg" : "assets/icons/Open Eye Black.svg",
                                                            fit: BoxFit.scaleDown,
                                                            colorFilter: isPasswordErrorValue ? ColorFilter.mode(getRedColor, BlendMode.srcIn) : isPasswordFocusedValue ? ColorFilter.mode(getOrangeColor, BlendMode.srcIn) : null,
                                                            alignment: Alignment.centerRight,
                                                          )
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                hintText: "Password",
                                                hintStyle: TextStyle(
                                                  color: isPasswordErrorValue? getRedColor : isPasswordFocusedValue ? getOrangeColor : getGreyColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.normal,
                                                  fontFamily: getCustomFont,  
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),

                          const SizedBox(height: 10),

                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: getBlackColor.withOpacity(0.25),
                                          blurRadius: 5,
                                        ),
                                      ]
                                    ),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        padding: const MaterialStatePropertyAll(EdgeInsets.all(12.5)),
                                        shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        ),
                                        shadowColor: MaterialStatePropertyAll(getTransparentColor),
                                        backgroundColor: MaterialStatePropertyAll(getOrangeColor),
                                        foregroundColor: MaterialStatePropertyAll(getOrangeColor),
                                        overlayColor: MaterialStatePropertyAll(getOrangeColor),
                                      ),
                                      onPressed: () {
                                        
                                      },
                                      child: Center(
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            "Masuk",
                                            style: TextStyle(
                                              color: getWhiteColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: getCustomFont,  
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            
                                const SizedBox(width: 10),
                            
                                Expanded(
                                  flex: 1,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: getBlackColor.withOpacity(0.25),
                                          blurRadius: 5,
                                        ),
                                      ]
                                    ),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        padding: const MaterialStatePropertyAll(EdgeInsets.all(12.5)),
                                        shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            side: BorderSide(color: getOrangeColor),
                                          ),
                                        ),
                                        shadowColor: MaterialStatePropertyAll(getTransparentColor),
                                        backgroundColor: MaterialStatePropertyAll(getWhiteColor),
                                        foregroundColor: MaterialStatePropertyAll(getWhiteColor),
                                        surfaceTintColor: MaterialStatePropertyAll(getWhiteColor),
                                      ),
                                      onPressed: () {
                                        
                                      },
                                      child: Center(
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            "Daftar",
                                            style: TextStyle(
                                              color: getOrangeColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: getCustomFont,  
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
          
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "Copyright 2024 - Travelin",
                            style: TextStyle(
                              color: getBlackColor,
                              fontFamily: getCustomFont,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}