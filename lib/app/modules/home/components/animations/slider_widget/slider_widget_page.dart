import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank_clone/app/modules/home/components/animations/slider_widget/slider_widget_controller.dart';

class SliderWidget extends StatefulWidget {
  final Widget child;
  final Offset offset;
  final Duration duration;
  final Interval interval;

  const SliderWidget(
      {Key key, this.child, this.offset, this.duration, this.interval})
      : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState
    extends ModularState<SliderWidget, SliderWidgetController>
    with SingleTickerProviderStateMixin {
  //use 'controller' variable to access controller

  AnimationController _animationController;

  Animation<Offset> slide;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    slide = new Tween(begin: widget.offset, end: Offset.zero).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(widget.interval.begin, widget.interval.end,
            curve: Curves.elasticInOut),
      ),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slide,
      child: widget.child,
    );
  }
}
