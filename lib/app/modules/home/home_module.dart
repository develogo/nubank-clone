import 'package:nubank_clone/app/modules/home/modules/account/account_module.dart';

import 'package:nubank_clone/app/modules/home/components/animations/slider_widget/slider_widget_controller.dart';

import 'package:nubank_clone/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank_clone/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SliderWidgetController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          '/',
          child: (_, args) => HomePage(),
        ),
        ModularRouter('/account',
            module: AccountModule(), transition: TransitionType.downToUp),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
