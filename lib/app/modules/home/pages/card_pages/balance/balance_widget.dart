import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank_clone/presentation/nu_icons_icons.dart';
import '../../../home_controller.dart';
import 'package:nubank_clone/constants/const.dart' as constants;

class BalanceWidget extends StatelessWidget {
  //controller

  final HomeController _homeController = Modular.get();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Modular.to.pushNamed('/home/account'),
      child: Container(
        height: 155,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 25, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                NuIcons.ic_money_coins,
                                color: Colors.black.withOpacity(.5),
                                size: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Observer(
                                  builder: (_) => Text(
                                    'Conta',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(.5),
                                        fontSize:
                                            _homeController.fontSizeCardTitle),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              'Saldo disponível',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black38,
                                  fontSize: 12),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Observer(
                            builder: (context) => Container(
                              height: 35,
                              width: 250,
                              child: _homeController.showInfos
                                  ? Text(
                                      constants.balance,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    )
                                  : Container(
                                      color: Colors.grey.withOpacity(.5)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
