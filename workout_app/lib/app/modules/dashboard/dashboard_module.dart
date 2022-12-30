import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:workout_app/app/modules/dashboard/presenter/pages/dashboard_page.dart';

class DashBoardModule extends WidgetModule {
  DashBoardModule({super.key});

  @override
  List<Bind> get binds => const [];

  @override
  Widget get view => const DashboardPage();
}
