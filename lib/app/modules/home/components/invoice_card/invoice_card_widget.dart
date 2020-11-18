import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank_clone/app/modules/home/home_controller.dart';
import 'package:nubank_clone/constants/const.dart' as constants;

class InvoiceCardWidget extends StatelessWidget {
  final HomeController _homeController = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 40),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Fatura atual',
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 250,
              height: 50,
              child: Observer(
                builder: (_) {
                  if (!_homeController.showInfos) {
                    return Container(
                      height: double.maxFinite,
                      color: Colors.grey.withOpacity(.5),
                    );
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "R\$ ${constants.creditCardInvoice}",
                        style: TextStyle(
                            color: Color(0xff1aa4ed),
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Limite disponivel ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            constants.creditCardLimit,
                            style: TextStyle(
                                color: Color(0xff227f48),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
