import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelin/controller/custom_style_controller.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentMethods();
}

class _PaymentMethods extends State<Payment> {
  final ValueNotifier<String> _buttonContentNotifier = ValueNotifier<String>("Selanjutnya");

  @override
  void dispose() {
    _buttonContentNotifier.dispose();
    super.dispose();
  }

  void _changeContent(String newContent) {
    _buttonContentNotifier.value = newContent;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  splashRadius: 0.1,
                  padding: EdgeInsets.zero,
                  icon: SvgPicture.asset("assets/icons/Back Button.svg"),
                  onPressed: () {},
                ),
                const SizedBox(width: 32), // Beri jarak antara ikon dan teks
                Text(
                  "Payment Methods",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: getCustomFont,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _buildPaymentMethodTile(
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
                  _buildPaymentMethodTile(
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
                  _buildPaymentMethodTile(
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
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      // Handle next action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: getOrangeColor,
                      foregroundColor: getWhiteColor,
                      minimumSize: Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: ValueListenableBuilder<String>(
                      valueListenable: _buttonContentNotifier,
                      builder: (context, value, child) {
                        return Text(value, style: TextStyle(fontSize: 20, fontFamily: getCustomFont));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool _isBankTransferExpanded = false;
  bool _isEwalletExpanded = false;
  bool _isCreditCardExpanded = false;

  Widget _buildPaymentMethodTile({
    required String title,
    required bool isExpanded,
    required ValueChanged<bool> onExpansionChanged,
    required List<Widget> children,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: getWhiteColor,
          border: Border.all(color: getGreyColor),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: getBlackColor,
              blurRadius: 5,
            ),
          ],
        ),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: getTransparentColor),
          child: ExpansionTile(
            title: Text(
              title,
              style: TextStyle(
                color: getGreyColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            initiallyExpanded: isExpanded,
            onExpansionChanged: onExpansionChanged,
            children: children,
          ),
        ),
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
