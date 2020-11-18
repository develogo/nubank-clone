import 'package:flutter/material.dart';
import 'package:nubank_clone/app/modules/home/modules/account/components/menu_options/components/item_menu/item_menu_widget.dart';
import 'package:nubank_clone/presentation/nu_icons_icons.dart';

class MenuOptionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ItemMenuWidget(icon: NuIcons.ic_savings_global_action_transfer_in, label: "Depositar",),
          ItemMenuWidget(icon: NuIcons.nuds_ic_code, label: "Pagar",),
          ItemMenuWidget(icon: NuIcons.ic_savings_global_action_transfer_out, label: "Transferir",),
          ItemMenuWidget(icon: NuIcons.ic_savings_global_action_request_money, label: "Dividir Valor",),
        ],
      ),
    );
  }
}
