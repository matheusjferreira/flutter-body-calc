import 'package:flutter/material.dart';

class PrimaryTableRow extends StatelessWidget {
  final String labelFirstCell;
  final String labelSecondCell;
  final TextStyle foregroundStyle;
  final TextStyle? foregroundStyleSecondCell;
  final Color backgroundColor;

  const PrimaryTableRow({
    required this.labelFirstCell,
    required this.labelSecondCell,
    required this.foregroundStyle,
    required this.backgroundColor,
    this.foregroundStyleSecondCell,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(200),
        1: FlexColumnWidth(100),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.top,
              child: Container(
                height: 48,
                color: backgroundColor,
                child: Center(
                    child: Text(
                  labelFirstCell,
                  style: foregroundStyle,
                )),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.top,
              child: Container(
                height: 48,
                color: backgroundColor,
                child: Center(
                  child: Text(
                    labelSecondCell,
                    style: foregroundStyleSecondCell ?? foregroundStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
