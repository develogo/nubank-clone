import 'package:flutter/material.dart';

class RewardsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: double.maxFinite,
                  child: Text(
                    'Rewards',
                    style: TextStyle(
                      color: Color(0xff7a199e),
                      fontSize: 23,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 20),
                  width: double.maxFinite,
                  child: Text(
                    'Pague compras com pontos  que nunca expiram',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * .30,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'CONHECER',
                  style: TextStyle(color: Color(0xff8b05bc), fontSize: 14),
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color(0xff8b05bc),
                  ),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
