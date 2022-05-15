import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import '../../../shared/core/app_routes.dart';

class HomeController {
  void about() {
    Modular.to.pushNamed(AppRoutes.about);
  }

  double _height = 0.0;
  double _weight = 0.0;
  final result = ValueNotifier<String>('');

  dynamic setHeight(String value) => _height = double.tryParse(value) ?? 0.0;

  void setWeight(String value) => _weight = double.tryParse(value) ?? 0.0;

  dynamic calculateBmi() {
    final imcValue = _weight / (_height * _height);
    final imcText = imcValue.toStringAsFixed(1);
    if (imcValue < 16) {
      result.value = 'severe_thinness_result'.i18n([imcText]);
    } else if (imcValue > 16 && imcValue < 17) {
      result.value = 'moderate_thinness_result'.i18n([imcText]);
    } else if (imcValue > 17 && imcValue < 18.5) {
      result.value = 'mild_thinnessv_result'.i18n([imcText]);
    } else if (imcValue > 18.5 && imcValue < 25) {
      result.value = 'normal_result'.i18n([imcText]);
    } else if (imcValue > 25 && imcValue < 30) {
      result.value = 'overweight_result'.i18n([imcText]);
    } else if (imcValue > 30 && imcValue < 35) {
      result.value = 'obesity_class_i_result'.i18n([imcText]);
    } else if (imcValue > 35 && imcValue < 40) {
      result.value = 'obesity_class_ii_result'.i18n([imcText]);
    } else if (imcValue >= 40) {
      result.value = 'obesity_class_iii_result'.i18n([imcText]);
    }
  }
}
