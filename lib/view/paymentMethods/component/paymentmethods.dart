import 'package:flutter/material.dart';
import 'package:travelin/controller/color_controller.dart';

class PaymentMethodSection extends StatefulWidget {
  @override
  _PaymentMethodSectionState createState() => _PaymentMethodSectionState();
}

class _PaymentMethodSectionState extends State<PaymentMethodSection> {
  bool _isBankTransferExpanded = false;
  bool _isEwalletExpanded = false;
  bool _isCreditCardExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          PaymentMethodTile(
            title: 'Transfer Bank',
            isExpanded: _isBankTransferExpanded,
            onExpansionChanged: (bool expanded) {
              setState(() {
                _isBankTransferExpanded = expanded;
              });
            },
            children: [
              _buildListTileWithDivider(title: 'Bank 1'),
              _buildListTileWithDivider(title: 'Bank 2'),
              _buildListTileWithDivider(title: 'Bank 3'),
            ],
          ),
          PaymentMethodTile(
            title: 'E - Wallet',
            isExpanded: _isEwalletExpanded,
            onExpansionChanged: (bool expanded) {
              setState(() {
                _isEwalletExpanded = expanded;
              });
            },
            children: [
              _buildListTileWithDivider(title: 'E-Wallet 1'),
              _buildListTileWithDivider(title: 'E-Wallet 2'),
            ],
          ),
          PaymentMethodTile(
            title: 'Credit / Debit Card',
            isExpanded: _isCreditCardExpanded,
            onExpansionChanged: (bool expanded) {
              setState(() {
                _isCreditCardExpanded = expanded;
              });
            },
            children: [
              _buildListTileWithDivider(title: 'Credit Card 1'),
              _buildListTileWithDivider(title: 'Credit Card 2'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildListTileWithDivider({required String title}) {
    return Column(
      children: [
        ListTile(
          title: Text(title),
        ),
        Divider(
          height: 1,
          color: getGreyColor,
        ),
      ],
    );
  }
}

PaymentMethodTile({required String title, required bool isExpanded, required Null Function(bool expanded) onExpansionChanged, required List<Widget> children}) {
}
