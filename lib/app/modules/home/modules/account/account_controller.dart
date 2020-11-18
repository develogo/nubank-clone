import 'package:mobx/mobx.dart';

part 'account_controller.g.dart';

class AccountController = _AccountControllerBase with _$AccountController;

abstract class _AccountControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
