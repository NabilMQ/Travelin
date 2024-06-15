import 'package:flutter/material.dart';
import 'package:travelin/view/auth/component/body/component/passwordTextField/component/password_error.dart';
import 'package:travelin/view/auth/component/body/component/passwordTextField/component/password_text_field.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({ super.key });

  @override
  State <PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 2,
      child: Column(
        children: [
          PasswordTextField(),

          SizedBox(height: 5),

          PasswordError()
        ],
      ),
    );
  }
}