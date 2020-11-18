import 'package:flutter/material.dart';
import 'package:nubank_clone/app/modules/home/components/item_menu_header_menu/item_menu_header_menu_widget.dart';
import 'package:nubank_clone/app/modules/home/components/qr_header_menu/qr_header_menu_widget.dart';
import 'package:nubank_clone/app/modules/home/components/widgets/button_edge_header_menu/button_edge_header_menu_widget.dart';

class HeaderMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 100 * 82,
      child: AbsorbPointer(
        absorbing: false,
        child: ListView(
          children: <Widget>[
            QrHeaderMenuWidget(),
            ItemMenuHeaderMenuWidget(),
            SizedBox(height: 25),
            ButtonEdgeHeaderMenuWidget(
              label: 'ACESSAR OUTRA CONTA',
            ),
            ButtonEdgeHeaderMenuWidget(
              label: 'SAIR DA CONTA',
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
