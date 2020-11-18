import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank_clone/constants/const.dart' as constants;

import '../../home_controller.dart';

class HeaderWidget extends StatelessWidget {
  final Function onTap;
  final Function showInfo;
  HeaderWidget({Key key, this.onTap, this.showInfo}) : super(key: key);

  //controller
  final _homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 20, right: 20),
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Olá, ${constants.name}",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Row(
                children: [
                  Observer(
                    builder: (context) => _homeController.swipedCard
                        ? Container()
                        : GestureDetector(
                            onTap: showInfo,
                            child: CircleAvatar(
                              child: _homeController.showInfos
                                  ? FaIcon(FontAwesomeIcons.eye)
                                  : FaIcon(FontAwesomeIcons.eyeSlash),
                            ),
                          ),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: CircleAvatar(
                      child: Observer(
                        builder: (context) => _homeController.swipedCard
                            ? FaIcon(
                                FontAwesomeIcons.times,
                              )
                            : FaIcon(
                                FontAwesomeIcons.cog,
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
