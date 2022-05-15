import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../../../shared/core/app_colors.dart';
import '../../../shared/core/app_fonts.dart';
import '../widgets/about_table_bmi.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: TabBarView(
          children: [
            const AboutTableBmi(),
            _buildTexts(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget? _buildAppBar() {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: AppColors.blue,
      centerTitle: true,
      title: Text(
        'about'.i18n(),
        style: AppFonts.appBarTitle,
      ),
      bottom: TabBar(
        tabs: [
          Tab(text: 'table_bmi'.i18n(), height: 48),
          Tab(text: 'about_the_project'.i18n(), height: 48),
        ],
        indicatorColor: AppColors.blue,
        labelColor: AppColors.white,
        labelStyle: AppFonts.tabText600,
        unselectedLabelStyle: AppFonts.tabText400,
        unselectedLabelColor: AppColors.white,
      ),
    );
  }

  Widget _buildTexts() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          const SizedBox(height: 64),
          Text(
            'body_calc'.i18n(),
            style: AppFonts.bodyTitle,
          ),
          const SizedBox(height: 40),
          Text(
            'about_project_text'.i18n(),
            style: AppFonts.bodyText,
          ),
          const SizedBox(height: 24),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'developer'.i18n(),
              style: AppFonts.bodyText,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'about_developer_text'.i18n(),
            style: AppFonts.bodyText,
          )
        ],
      ),
    );
  }
}
