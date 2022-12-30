import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:workout_app/app/modules/workout/presenter/pages/workout_page.dart';

class WorkoutModule extends WidgetModule {
  WorkoutModule({super.key});

  @override
  List<Bind> get binds => const [];

  @override
  Widget get view => const WorkoutPage();
}
