import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/view/getStarted/get_started.dart';

class Auth extends StatefulWidget {
  const Auth({ Key? key }) : super(key: key);

  @override
  State <Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {

  // Masukkin ke custom style model
  Color redColor = const Color.fromRGBO(251, 39, 66, 1);
  // Batas model


  // Jadiin model baru
  TextEditingController emailController = TextEditingController();
  static FocusNode emailFocus = FocusNode();
  ValueNotifier isEmailFocused = ValueNotifier <bool>(false);
  ValueNotifier isEmailError = ValueNotifier <bool>(false);

  TextEditingController passwordController = TextEditingController();
  static FocusNode passwordFocus = FocusNode();
  ValueNotifier isPasswordFocused = ValueNotifier <bool>(false);
  ValueNotifier isPasswordError = ValueNotifier <bool>(false);
  ValueNotifier isPasswordHidden = ValueNotifier(true);

  // Buat fungsi login dan logout

  void onEmailFocusChange() {
    isEmailFocused.value = !isEmailFocused.value;
  }

  bool validateEmail(String value) {
    return RegExp(r"(\w+?@\w+?\.\w+)$").hasMatch(value);
  }

  bool validatePassword(String value) {
    return value.length < 8;
  }

  void onPasswordFocusChange() {
    isPasswordFocused.value = !isPasswordFocused.value;
  }
  // Batas model

  @override
  void initState() {
    super.initState();
    emailFocus.addListener(onEmailFocusChange);
    passwordFocus.addListener(onPasswordFocusChange);
  }

  @override
  void dispose() {
    isNextPage = false;
    emailFocus.removeListener(onEmailFocusChange);
    passwordFocus.removeListener(onPasswordFocusChange);
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
                              valueListenable: isEmailError,
                              builder: (context, isEmailErrorValue, child) {
                                return ValueListenableBuilder(
                                  valueListenable: isEmailFocused,
                                  builder: (context, isEmailFocusedValue, child) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: isEmailErrorValue ? redColor : isEmailFocusedValue ? getOrangeColor : getGreyColor,
                                            blurRadius: 5,
                                            spreadRadius: 0,
                                          ),
                                        ],
                                        color: getWhiteColor,
                                      ),
                                      child: Center(
                                        child: TextField(
                                          controller: emailController,
                                          focusNode: emailFocus,
                                          keyboardType: TextInputType.emailAddress,
                                          onSubmitted: (value) {
                                            if (!validateEmail(value)) {
                                              isEmailError.value = true;
                                            }
                                            else {
                                              isEmailError.value = false;
                                            }
                                          },
                                          onChanged: (value) {
                                            if (validateEmail(value)) {
                                              isEmailError.value = false;
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
                                                        color: redColor,
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
                                              color: isEmailErrorValue ? redColor : isEmailFocusedValue ? getOrangeColor : getGreyColor,
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
                              valueListenable: isPasswordError,
                              builder: (context, isPasswordErrorValue, child) {
                                return ValueListenableBuilder(
                                  valueListenable: isPasswordFocused,
                                  builder: (context, isPasswordFocusedValue, child) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: isPasswordErrorValue ? redColor : isPasswordFocusedValue ? getOrangeColor : getGreyColor,
                                            blurRadius: 5,
                                            spreadRadius: 0,
                                          ),
                                        ],
                                        color: getWhiteColor,
                                      ),
                                      child: Center(
                                        child: ValueListenableBuilder(
                                          valueListenable: isPasswordHidden,
                                          builder: (context, isPasswordHiddenValue, child) {
                                            return TextField(
                                              controller: passwordController,
                                              focusNode: passwordFocus,
                                              obscureText: isPasswordHiddenValue,
                                              onSubmitted: (value) {
                                                if (validatePassword(value)) {
                                                  isPasswordError.value = true;
                                                }
                                                else {
                                                  isPasswordError.value = false;
                                                }
                                              },
                                              onChanged: (value) {
                                                if (!validatePassword(value)) {
                                                  isPasswordError.value = false;
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
                                                                  color: redColor,
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
                                                            isPasswordHidden.value = !isPasswordHidden.value;
                                                          },
                                                          child: SvgPicture.asset(
                                                            isPasswordHiddenValue ? "assets/icons/Close Eye Black.svg" : "assets/icons/Open Eye Black.svg",
                                                            fit: BoxFit.scaleDown,
                                                            colorFilter: isPasswordErrorValue ? ColorFilter.mode(redColor, BlendMode.srcIn) : isPasswordFocusedValue ? ColorFilter.mode(getOrangeColor, BlendMode.srcIn) : null,
                                                            alignment: Alignment.centerRight,
                                                          )
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                hintText: "Password",
                                                hintStyle: TextStyle(
                                                  color: isPasswordErrorValue? redColor : isPasswordFocusedValue ? getOrangeColor : getGreyColor,
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