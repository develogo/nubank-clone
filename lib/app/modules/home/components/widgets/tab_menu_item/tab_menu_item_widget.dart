import 'package:flutter/material.dart';

class TabMenuItemWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  const TabMenuItemWidget({Key key, this.icon, this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white30.withOpacity(0.1),
        ),
        width: 96,
        child: FlatButton(
          padding: EdgeInsets.fromLTRB(8,8,16,8),
          onPressed: (){},
          child: SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  icon,
                  size: 25,
                  color: Colors.white,
                ),
                Text(
                  label,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
