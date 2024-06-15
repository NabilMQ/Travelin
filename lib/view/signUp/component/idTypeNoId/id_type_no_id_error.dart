import 'package:flutter/material.dart';
import 'package:travelin/view/signUp/component/errorText/error_text.dart';
import 'package:travelin/view/signUp/sign_up.dart';

class IdTypeNoIdError extends StatefulWidget {
  const IdTypeNoIdError({ super.key });

  @override
  State <IdTypeNoIdError> createState() => _IdTypeNoIdErrorState();
}

class _IdTypeNoIdErrorState extends State<IdTypeNoIdError> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: [
          ErrorText(
            flex: 3,
            isError: isIdTypeError,
            errorMessage: "Please choose one",
          ),

          const SizedBox(width: 20),

          ErrorText(
            flex: 7,
            isError: isIdNumberError,
            errorMessage: "ID Number length is 16 number",
          ),
        ],
      ),
    );
  }
}