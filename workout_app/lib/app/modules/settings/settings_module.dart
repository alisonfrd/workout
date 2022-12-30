import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:workout_app/app/modules/settings/presenter/pages/settings_page.dart';

class SettingsModule extends WidgetModule {
  SettingsModule({super.key});

  @override
  List<Bind> get binds => const [];

  @override
  Widget get view => const SettingsPage();
}
