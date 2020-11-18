import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank_clone/presentation/nu_icons_icons.dart';
import 'splash_controller.dart';
import 'package:nubank_clone/constants/const.dart' as constants;

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Splash"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController>
    with SingleTickerProviderStateMixin {
  //use 'controller' variable to access controller

  //Animation Controller
  AnimationController _animationController;

  Animation<double> sizeIcon;
  Animation<Offset> iconOffSet;
  Animation<Offset> nameAnimation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: new Duration(seconds: 1), vsync: this);

    sizeIcon = new Tween<double>(begin: 1.6, end: .6).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(
          0,
          .4,
          curve: Curves.linear,
        ),
      ),
    );

    iconOffSet = new Tween(begin: Offset(0, 0), end: Offset(-.8, 0))
        .animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(0.4, 0.7, curve: Curves.linear),
    ));

    nameAnimation = new Tween(begin: Offset(-.6, 0), end: Offset(.4, 0))
        .animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(0.7, 1, curve: Curves.linear),
    ));

    _animationController.forward();

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        print('Acabou');
        Modular.to.pushReplacementNamed('/home');
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF81269F),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Center(
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (BuildContext context, Widget child) {
                  return SlideTransition(
                    position: nameAnimation,
                    child: Text(
                      constants.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: Transform.translate(
                offset: Offset(-60, 0),
                child: Container(
                  color: Color(0xFF81269F),
                  height: 50,
                  width: 105,
                ),
              ),
            ),
            Center(
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (BuildContext context, Widget child) {
                  return Transform.scale(
                    scale: sizeIcon.value,
                    child: SlideTransition(
                        position: iconOffSet,
                        child: Icon(
                          NuIcons.ic_logo_nu,
                          color: Colors.white,
                          size: 80,
                        )),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
