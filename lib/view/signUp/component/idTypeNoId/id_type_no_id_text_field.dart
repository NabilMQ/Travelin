import 'package:flutter/material.dart';
import 'package:travelin/view/signUp/component/idTypeNoId/component/idType/id_type_text_field.dart';
import 'package:travelin/view/signUp/component/idTypeNoId/component/noId/no_id_text_field.dart';

class IdTypeNoIdTextField extends StatefulWidget {
  const IdTypeNoIdTextField({ super.key });

  @override
  State <IdTypeNoIdTextField> createState() => _IdTypeNoIdTextFieldState();
}

class _IdTypeNoIdTextFieldState extends State<IdTypeNoIdTextField> {
  @override
  Widget build(BuildContext context) {
    return const Flexible(
      flex: 3,
      child: Row(
        children: [
          IdTypeTextField(),

          SizedBox(width: 20),
          
          NoIdTextField(),
        ],
      ),
    );
  }
}