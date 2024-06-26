import 'package:flutter/material.dart';
import 'package:travelin/view/detailTicket/chooseDate/component/chooseDateContent/component/blocker.dart';
import 'package:travelin/view/detailTicket/chooseDate/component/chooseDateContent/component/row_of_date.dart';
import 'package:travelin/view/detailTicket/chooseDate/component/chooseDateContent/component/select_date.dart';

class ChooseDateContent extends StatefulWidget {
  const ChooseDateContent({ super.key });

  @override
  State <ChooseDateContent> createState() => _ChooseDateContentState();
}

class _ChooseDateContentState extends State<ChooseDateContent> {
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: 40,
      child: Stack(
        children: [
          const RowOfDate(),

          const Blocker(offset: Offset(-65, -10)),

          const Blocker(offset: Offset(-65, 10)),

          const SelectDate(),

          Blocker(offset: Offset(size.width - 40, 10)),

          Blocker(offset: Offset(size.width - 40, -10)),
        ],
      ),
    );
  }
}