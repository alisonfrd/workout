import 'package:flutter_modular/flutter_modular.dart';
import 'package:workout_app/app/modules/home/presenter/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => const [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const HomePage(),
        )
      ];
}
