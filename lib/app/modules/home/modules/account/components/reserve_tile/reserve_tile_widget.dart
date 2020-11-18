import 'package:flutter/material.dart';
import 'package:nubank_clone/presentation/nu_icons_icons.dart';
import 'package:nubank_clone/constants/const.dart' as constants;

class ReserveTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: ListTile(
        leading: Icon(NuIcons.ic_savings_add_to_reserve, color: Colors.black54),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Dinheiro Guardado',
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
            Text(
              constants.reserve,
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ],
        ),
        trailing: Icon(
          NuIcons.ic_chevron_right,
          size: 20,
        ),
        onTap: () {},
      ),
    );
  }
}
