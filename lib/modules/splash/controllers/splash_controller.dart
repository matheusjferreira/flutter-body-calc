import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/core/app_routes.dart';

class SplashController {
  void load() {
    Future.delayed(const Duration(seconds: 1)).then((value) async {
      Modular.to.navigate(AppRoutes.home);
    });
  }
}
