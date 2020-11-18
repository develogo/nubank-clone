import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank_clone/app/modules/home/modules/account/components/menu_options/menu_options_widget.dart';
import 'account_controller.dart';
import 'components/app_bar_account/app_bar_account_widget.dart';
import 'components/balance_account/balance_account_widget.dart';
import 'components/reserve_tile/reserve_tile_widget.dart';

class AccountPage extends StatefulWidget {
  final String title;
  const AccountPage({Key key, this.title = "Account"}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends ModularState<AccountPage, AccountController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAccountWidget(),
      body: ListView(
        children: <Widget>[
          BalanceAccountWidget(),
          ReserveTileWidget(),
          MenuOptionsWidget(),
        ],
      ),
    );
  }
}
