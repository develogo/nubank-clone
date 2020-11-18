import 'package:mobx/mobx.dart';

part 'slider_widget_controller.g.dart';

class SliderWidgetController = _SliderWidgetControllerBase
    with _$SliderWidgetController;

abstract class _SliderWidgetControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
