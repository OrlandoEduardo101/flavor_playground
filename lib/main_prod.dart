import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';
import 'app/flavor.dart';
import 'app/share/enums/flavor_type_enum.dart';

void main() {
  Flavor.flavorType = FlavorTypeEnum.prod;
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
