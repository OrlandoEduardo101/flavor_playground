import 'package:flavor_playground/app/flavor.dart';
import 'package:flavor_playground/app/share/enums/flavor_type_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() {
  Flavor.flavorType = FlavorTypeEnum.dev;
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
