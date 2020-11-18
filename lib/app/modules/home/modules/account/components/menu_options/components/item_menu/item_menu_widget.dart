import 'package:flutter/material.dart';

class ItemMenuWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  const ItemMenuWidget({Key key, this.icon, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: .8, horizontal: .3),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        width: 105,
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
                  color: Color(0xFF81269F),
                ),
                Text(
                  label,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.purple
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
