import 'package:flutter/material.dart';
import 'package:travelin/view/signUp/component/idTypeNoId/component/noId/no_id_text.dart';
import 'package:travelin/view/signUp/component/idTypeNoId/component/idType/id_type_text.dart';

class IdTypeNoIdText extends StatefulWidget {
  const IdTypeNoIdText({ super.key });

  @override
  State <IdTypeNoIdText> createState() => _IdTypeNoIdTextState();
}

class _IdTypeNoIdTextState extends State<IdTypeNoIdText> {
  @override
  Widget build(BuildContext context) {
    return const Flexible(
      flex: 1,
      child: Row(
        children: [
          IdTypeText(),
      
          SizedBox(width: 20),

          NoIdText(),
        ],
      ),
    );
  }
}