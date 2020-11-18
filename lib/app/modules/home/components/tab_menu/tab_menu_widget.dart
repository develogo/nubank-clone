import 'package:flutter/material.dart';
import 'package:nubank_clone/app/modules/home/components/widgets/tab_menu_item/tab_menu_item_widget.dart';
import 'package:nubank_clone/presentation/nu_icons_icons.dart';

class TabMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 96,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(
              width: 15,
            ),
            TabMenuItemWidget(
              icon: NuIcons.nuds_ic_add_user,
              label: 'Indicar Amigos',
            ),
            TabMenuItemWidget(
              icon: NuIcons.nuds_ic_card,
              label: 'Recarga de celular',
            ),
            TabMenuItemWidget(
              icon: NuIcons.ic_charge_transaction,
              label: 'Cobrar',
            ),
            TabMenuItemWidget(
              icon: NuIcons.ic_savings_global_action_transfer_in,
              label: 'Depositar',
            ),
            TabMenuItemWidget(
              icon: NuIcons.ic_savings_global_action_transfer_out,
              label: 'Transferir',
            ),
            TabMenuItemWidget(
              icon: NuIcons.cc_ic_limit_adjustment,
              label: 'Ajustar limite',
            ),
            TabMenuItemWidget(
              icon: NuIcons.help,
              label: 'Me Ajuda',
            ),
            TabMenuItemWidget(
              icon: NuIcons.nuds_ic_code,
              label: 'Pagar',
            ),
            TabMenuItemWidget(
              icon: NuIcons.ic_virtual_card_active,
              label: 'Bloquear cartão',
            ),
            TabMenuItemWidget(
              icon: NuIcons.cc_ic_virtual_card,
              label: 'Cartão virtual',
            ),
            TabMenuItemWidget(
              icon: NuIcons.nuds_ic_sort,
              label: 'Organizar atalhos',
            ),
            SizedBox(
              width: 25,
            ),
          ],
        ),
      ),
    );
  }
}
