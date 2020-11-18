import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:nubank_clone/app/modules/home/components/invoice_card/invoice_card_widget.dart';
import 'package:nubank_clone/presentation/nu_icons_icons.dart';

import '../../../home_controller.dart';

class CreditCardWidget extends StatelessWidget {
  //Controller
  final HomeController homeController = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          NuIcons.ic_credit_card_product,
                          color: Colors.black.withOpacity(.5),
                          size: 18,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Observer(
                            builder: (_) => Text(
                              'Cartão de Crédito',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.5),
                                  fontSize: homeController.fontSizeCardTitle),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InvoiceCardWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget colorBarSide({@required double height, @required Color color}) {
    return Container(
      height: height,
      width: 8,
      color: color,
    );
  }
}
