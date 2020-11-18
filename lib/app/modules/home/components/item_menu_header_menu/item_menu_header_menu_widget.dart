import 'package:flutter/material.dart';
import 'package:nubank_clone/app/modules/home/components/widgets/button_borderless_header_menu/button_borderless_header_menu_widget.dart';
import 'package:nubank_clone/presentation/nu_icons_icons.dart';

class ItemMenuHeaderMenuWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width / 100 * 85;
    return Center(
      child: Column(
        children: <Widget>[
          divider(width: width),
          ButtonBorderlessHeaderMenuWidget(
            icon: NuIcons.help,
            label: 'Me ajuda',
          ),
          divider(width: width),
          ButtonBorderlessHeaderMenuWidget(
            icon: NuIcons.user,
            label: 'Perfil',
            subLabel: 'Nome de preferência, telefone, e-mail',
          ),
          divider(width: width),
          ButtonBorderlessHeaderMenuWidget(
            icon: NuIcons.ic_savings,
            label: 'Configurar conta',
          ),
          divider(width: width),
          ButtonBorderlessHeaderMenuWidget(
            icon: NuIcons.ic_card_nu,
            label: 'Configurar Cartão',
          ),
          divider(width: width),
          ButtonBorderlessHeaderMenuWidget(
            icon: NuIcons.store,
            label: 'Pedir conta PJ',
          ),
          divider(width: width),
          ButtonBorderlessHeaderMenuWidget(
            icon: NuIcons.nuds_ic_card,
            label: 'Configurações do app',
          ),
          divider(width: width),
        ],
      ),
    );
  }
  
  Widget divider({@required double width}){
    return Container(
      width: width,
      height: 1,
      color: Colors.white.withOpacity(.3),
    );
  }
}
