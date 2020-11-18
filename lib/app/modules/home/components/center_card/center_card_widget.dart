import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank_clone/app/modules/home/pages/card_pages/balance/balance_widget.dart';
import 'package:nubank_clone/app/modules/home/pages/card_pages/credit_card/credit_card_widget.dart';
import 'package:nubank_clone/app/modules/home/pages/card_pages/rewards/rewards_widget.dart';

import '../../home_controller.dart';

class CenterCardWidget extends StatefulWidget {
  @override
  _CenterCardWidgetState createState() => _CenterCardWidgetState();
}

HomeController homeController = Modular.get();

class _CenterCardWidgetState extends State<CenterCardWidget> {
  List<Widget> cardPages = [
    CreditCardWidget(),
    SizedBox(height: 15),
    BalanceWidget(),
    SizedBox(height: 15),
    RewardsWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: homeController.swipedCard
            ? const NeverScrollableScrollPhysics()
            : const AlwaysScrollableScrollPhysics(),
        itemCount: cardPages.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: cardPages[index],
          );
        },
      ),
    );
  }
}
