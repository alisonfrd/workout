import 'package:flutter_modular/flutter_modular.dart';
import 'package:workout_app/app/modules/auth/presenter/auth_page.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => const [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const AuthPage(),
        ),
      ];
}
