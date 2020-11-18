import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/const.dart' as constants;


class BalanceAccountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 250,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Saldo disponível',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            Text(
              constants.balance,
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
