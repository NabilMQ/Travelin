import 'package:flutter/material.dart';
import 'package:travelin/controller/auth_controller.dart';
import 'package:travelin/controller/custom_style_controller.dart';
import 'package:travelin/controller/get_started_controller.dart';
import 'package:travelin/view/auth/component/body/body.dart';
import 'package:travelin/view/auth/component/headerIllustration/header_illustration.dart';

class Auth extends StatefulWidget {
  const Auth({ super.key });

  @override
  State <Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {

 @override
  void initState() {
    super.initState();
    addAuthFormListener();
  }

  @override
  void dispose() {
    setIsNextPage = false;
    removeAuthFormListener();
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
          child: const Column(
            children: [
              HeaderIllustration(),
          
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}