import 'package:flutter/material.dart';
import 'package:travelin/view/auth/component/body/component/emailTextField/component/email_error.dart';
import 'package:travelin/view/auth/component/body/component/emailTextField/component/email_text_field.dart';

class EmailFormField extends StatefulWidget {
  const EmailFormField({ super.key });

  @override
  State <EmailFormField> createState() => _EmailFormFieldState();
}

class _EmailFormFieldState extends State<EmailFormField> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 2,
      child: Column(
        children: [
          EmailTextField(),

          SizedBox(height: 5),

          EmailError(),
        ],
      ),
    );
  }
}