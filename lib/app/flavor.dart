import 'package:flavor_playground/app/share/constants/api_url.dart';
import 'package:flavor_playground/app/share/enums/flavor_type_enum.dart';

class Flavor {
  Flavor._instance();

  static late FlavorTypeEnum flavorType;

  static String get flavorMessage {
    switch (flavorType) {
      case FlavorTypeEnum.dev:
        return 'Dev';
      case FlavorTypeEnum.prod:
        return 'Prod';
    }
  }

  static String get urlBase {
    switch (flavorType) {
      case FlavorTypeEnum.dev:
        return kUrlDev;
      case FlavorTypeEnum.prod:
        return kUrlProd;
    }
  }
}
