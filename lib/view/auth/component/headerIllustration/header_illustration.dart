import 'package:flutter/material.dart';

class HeaderIllustration extends StatefulWidget {
  const HeaderIllustration({ super.key });

  @override
  State <HeaderIllustration> createState() => _HeaderIllustrationState();
}

class _HeaderIllustrationState extends State<HeaderIllustration> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Center(
        child: Image.asset(
          "assets/images/Get Started (4).jpg", 
          alignment: Alignment.bottomCenter,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}