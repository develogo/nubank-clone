import 'package:flutter/material.dart';

class ButtonBorderlessHeaderMenuWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final String subLabel;
  ButtonBorderlessHeaderMenuWidget({@required this.icon, @required this.label, this.subLabel});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 100 * 85,
      height: 50,
      child: FlatButton(
        padding: EdgeInsets.zero,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
                subLabel != null ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      label,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                    Text(
                      subLabel,
                      style: TextStyle(
                        color: Colors.white.withOpacity(.6),
                        fontSize: 10,
                      ),
                    ),
                  ],
                ) :
                Text(
                  label,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal
                  ),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 14,
            )
          ],
        ),
        onPressed: (){},
      ),
    );
  }
}
