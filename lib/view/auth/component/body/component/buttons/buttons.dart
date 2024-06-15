import 'package:flutter/material.dart';
import 'package:travelin/view/auth/component/body/component/buttons/component/login_button.dart';
import 'package:travelin/view/auth/component/body/component/buttons/component/sign_up_button.dart';

class Buttons extends StatefulWidget {
  const Buttons({ super.key });

  @override
  State <Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            LoginButton(),
        
            SizedBox(width: 10),
        
            SignUpButton(),
          ],
        ),
      ),
    );
  }
}