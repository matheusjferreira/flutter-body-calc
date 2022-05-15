import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../../../shared/core/app_colors.dart';
import '../../../shared/core/app_fonts.dart';
import '../../../shared/helpers/table_data_helper.dart';
import '../../../shared/widgets/table_rows/primary_table_row.dart';

class AboutTableBmi extends StatelessWidget {
  const AboutTableBmi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64, right: 32, left: 32),
      child: Column(
        children: [
          PrimaryTableRow(
            labelFirstCell: 'category'.i18n(),
            labelSecondCell: 'bmi_range'.i18n(),
            foregroundStyle: AppFonts.bodyTitleWhite,
            foregroundStyleSecondCell: AppFonts.smallBodyTitleWhite,
            backgroundColor: AppColors.blue,
          ),
          PrimaryTableRow(
            labelFirstCell: 'severe_thinness_table'.i18n(),
            labelSecondCell: TableDataHelper.tableData[0],
            foregroundStyle: AppFonts.bodyTextWhite,
            backgroundColor: AppColors.blue,
          ),
          PrimaryTableRow(
            labelFirstCell: 'moderate_thinness_table'.i18n(),
            labelSecondCell: TableDataHelper.tableData[1],
            foregroundStyle: AppFonts.bodyTextWhite,
            backgroundColor: AppColors.blue,
          ),
          PrimaryTableRow(
            labelFirstCell: 'mild_thinness_table'.i18n(),
            labelSecondCell: TableDataHelper.tableData[2],
            foregroundStyle: AppFonts.bodyTextWhite,
            backgroundColor: AppColors.blue,
          ),
          PrimaryTableRow(
            labelFirstCell: 'normal_table'.i18n(),
            labelSecondCell: TableDataHelper.tableData[3],
            foregroundStyle: AppFonts.bodyTextWhite,
            backgroundColor: AppColors.blue,
          ),
          PrimaryTableRow(
            labelFirstCell: 'overweight_table'.i18n(),
            labelSecondCell: TableDataHelper.tableData[4],
            foregroundStyle: AppFonts.bodyTextWhite,
            backgroundColor: AppColors.blue,
          ),
          PrimaryTableRow(
            labelFirstCell: 'obesity_class_i_table'.i18n(),
            labelSecondCell: TableDataHelper.tableData[5],
            foregroundStyle: AppFonts.bodyTextWhite,
            backgroundColor: AppColors.blue,
          ),
          PrimaryTableRow(
            labelFirstCell: 'obesity_class_ii_table'.i18n(),
            labelSecondCell: TableDataHelper.tableData[6],
            foregroundStyle: AppFonts.bodyTextWhite,
            backgroundColor: AppColors.blue,
          ),
          PrimaryTableRow(
            labelFirstCell: 'obesity_class_iii_table'.i18n(),
            labelSecondCell: TableDataHelper.tableData[7],
            foregroundStyle: AppFonts.bodyTextWhite,
            backgroundColor: AppColors.blue,
          ),
        ],
      ),
    );
  }
}
