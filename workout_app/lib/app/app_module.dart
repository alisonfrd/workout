import 'package:flutter_modular/flutter_modular.dart';
import 'package:workout_app/app/modules/auth/auth_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  List<Bind> get binds => const [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: AuthModule()),
      ];
}
