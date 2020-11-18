import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank_clone/presentation/nu_icons_icons.dart';

class AppBarAccountWidget extends StatelessWidget with PreferredSizeWidget{
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipOval(
              child: Material(
                color: Colors.white, // button color
                child: InkWell(
                  splashColor: Colors.transparent, // inkwell color
                  child: SizedBox(width: 60, height: 60, child: Row(
                    children: <Widget>[
                      Icon(NuIcons.nuds_ic_chevron_left, color: Colors.black87,),
                      Icon(NuIcons.ic_savings,color: Colors.black87,),
                    ],
                  )),
                  onTap: () => Modular.to.pop(),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                  color: Colors.green,
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  '+R\$ 4640,10',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16
                  ),
                ),
              ),
            ),
            ClipOval(
              child: Material(
                color: Colors.white, // button color
                child: InkWell(
                  splashColor: Colors.transparent, // inkwell color
                  child: SizedBox(width: 60, height: 60, child: Icon(NuIcons.help, color: Colors.black87)),
                  onTap: () {},
                ),
              ),
            ),
          ],
        )
    );
  }
}
