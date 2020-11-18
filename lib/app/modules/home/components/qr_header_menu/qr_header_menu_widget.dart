import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrHeaderMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Padding(
      padding: const EdgeInsets.only(bottom: 20,top: 8),
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 12,bottom: 10),
              child: Container(
                width: 105,
                height: 105,
                color: Colors.red,
                child: QrImage(
                  data: 'Adoraria trabalhar com vôces',
                  padding: EdgeInsets.all(10),
                  version: QrVersions.auto,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.purple,
                ),
              ),
            ),
            textWidget('Banco', '260 - Nu Pagamentos S.A'),
            textWidget('Agência', '0001'),
            textWidget('Conta', '1580561-7')
          ],
        ),
      ),
    );
  }
  Widget textWidget(String text1 , String text2){
    return Padding(
      padding: EdgeInsets.only(bottom: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            text1,
            style: TextStyle(
                fontSize: 13
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              text2,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
