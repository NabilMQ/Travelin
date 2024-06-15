// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelin/view/auth/component/body/component/blank/blank.dart';
import 'package:travelin/view/auth/component/body/component/buttons/buttons.dart';
import 'package:travelin/view/auth/component/body/component/emailTextField/email_form_field.dart';
import 'package:travelin/view/auth/component/body/component/footerText/footer_text.dart';
import 'package:travelin/view/auth/component/body/component/header/header.dart';
import 'package:travelin/view/auth/component/body/component/passwordTextField/password_form_field.dart';

class Body extends StatefulWidget {
  const Body({ super.key });

  @override
  State <Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Column(
        children: const [ 
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),

                SizedBox(height: 10),

                EmailFormField(),

                SizedBox(height: 10),

                PasswordFormField(),

                SizedBox(height: 10),

                Buttons(),

                Blank(),
              ],
            ),
          ),

          FooterText()
        ],
      ),
    );
  }
}