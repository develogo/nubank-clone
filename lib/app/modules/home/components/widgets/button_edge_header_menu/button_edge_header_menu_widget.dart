import 'package:flutter/material.dart';

class ButtonEdgeHeaderMenuWidget extends StatelessWidget {
  final String label;

  const ButtonEdgeHeaderMenuWidget({Key key, this.label}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 100 * 85,
          height: 45,
          child: OutlineButton(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(0.3)
            ),
            highlightedBorderColor: Colors.white.withOpacity(0.5),
            highlightColor: Colors.black.withOpacity(.1),
            splashColor: Colors.black.withOpacity(.1),
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
            onPressed: (){},
            child: Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
