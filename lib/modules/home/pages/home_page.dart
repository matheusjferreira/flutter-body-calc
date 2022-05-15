import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import '../../../shared/core/app_fonts.dart';
import '../../../shared/widgets/app_bars/primary_app_bar.dart';
import '../../../shared/widgets/buttons/primary_button.dart';
import '../../../shared/widgets/text_fields/primary_text_field.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<HomeController>();
  
  @override
  void initState() {
    super.initState();
    controller.calculateBmi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        title: 'calculator_bmi'.i18n().toUpperCase(),
        icon: Icons.info,
        onPressed: () => controller.about(),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 64),
          PrimaryTextField(
            label: 'height'.i18n(),
            onChanged: controller.setHeight,
          ),
          const SizedBox(height: 40),
          PrimaryTextField(
            label: 'weight'.i18n(),
            onChanged: controller.setWeight,
          ),
          const SizedBox(height: 40),
          PrimaryButton(
            label: 'calculate'.i18n(),
            onPressed: () => controller.calculateBmi(),
          ),
          const SizedBox(height: 40),
          AnimatedBuilder(
            animation: controller.result,
            builder: (context, child) {
              return Center(
                child: Text(
                  controller.result.value,
                  style: AppFonts.bodyText,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
