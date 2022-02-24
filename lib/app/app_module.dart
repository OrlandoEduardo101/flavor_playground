import 'package:dio/dio.dart';
import 'package:flavor_playground/app/flavor.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:uno/uno.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => Dio(BaseOptions(baseUrl: Flavor.urlBase))),
    Bind((i) => Uno(baseURL: Flavor.urlBase)),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];
}
