import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:yagmur/core/extensions/padding_extension.dart';
import 'package:yagmur/core/extensions/size_extension.dart';
import 'package:yagmur/core/widgets/label_text_widget.dart';
import 'package:yagmur/core/widgets/text_widget.dart';

import '../constants/color_constants.dart';

// ignore: must_be_immutable
class StatisticViewVideoGame extends StatelessWidget {
  final List datas;
  bool isAge;
  bool isGender;
  bool isStudent;
  bool isPlayVideoGame;
  bool isFavoriteGame;
  bool isMostPLayedGame;
  bool isReasonOfPlayGame;

  List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.cyan,
    Colors.indigo
  ];

  final String surveyName;
  StatisticViewVideoGame({
    super.key,
    this.isAge = false,
    this.isStudent = false,
    this.isPlayVideoGame = false,
    this.isGender = false,
    this.isReasonOfPlayGame = false,
    this.isMostPLayedGame = false,
    this.isFavoriteGame = false,
    required this.surveyName,
    required this.datas,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstants.textFieldBackGroundColor),
            height: context.getSizeHeight(size: 0.3),
            width: context.getSizeWidth(size: 0.22),
            child: PieChart(PieChartData(
                centerSpaceRadius: 50, sections: _getSections(datas: datas)))),
        CustomLabelText(label: surveyName, isColorNotWhite: true),
        _getSectionsVariables(context: context)
            .getPadding(context: context, sizeWidth: 0.02, sizeHeight: 0)
      ],
    );
  }

  List<PieChartSectionData> _getSections({required List datas}) {
    List<PieChartSectionData> sections = [];

    for (int i = 0; i < datas.length; i++) {
      Color color = colors[i % colors.length];
      var data = datas[i];
      PieChartSectionData section = PieChartSectionData(
        color: color,
        showTitle: false,
        value: double.parse(data.percentage!),
        title: isAge
            ? '${data.age}: %${data.percentage}'
            : isGender
                ? '${data.gender}: %${data.percentage}'
                : isStudent
                    ? '${data.student}: %${data.percentage}'
                    : isPlayVideoGame
                        ? '${data.playVideoGame}: %${data.percentage}'
                        : isMostPLayedGame
                            ? '${data.mostPlayedGame}: %${data.percentage}'
                            : isGender
                                ? '${data.gender}: %${data.percentage}'
                                : isFavoriteGame
                                    ? '${data.favoriteGame}: %${data.percentage}'
                                    : isReasonOfPlayGame
                                        ? '${data.reasonOfPlayGame}: %${data.percentage}'
                                        : '',
      );
      sections.add(section);
    }

    return sections;
  }

  Container _getSectionsVariables({required BuildContext context}) {
    List<PieChartSectionData> sections = [];

    for (int i = 0; i < datas.length; i++) {
      Color color = colors[i % colors.length];
      var data = datas[i];
      PieChartSectionData section = PieChartSectionData(
        color: color,
        value: double.parse(data.percentage!),
        title: isAge
            ? '${data.age}: %${data.percentage}'
            : isGender
                ? '${data.gender}: %${data.percentage}'
                : isStudent
                    ? '${data.student}: %${data.percentage}'
                    : isPlayVideoGame
                        ? '${data.playVideoGame}: %${data.percentage}'
                        : isMostPLayedGame
                            ? '${data.mostPlayedGame}: %${data.percentage}'
                            : isGender
                                ? '${data.gender}: %${data.percentage}'
                                : isFavoriteGame
                                    ? '${data.favoriteGame}: %${data.percentage}'
                                    : isReasonOfPlayGame
                                        ? '${data.reasonOfPlayGame}: %${data.percentage}'
                                        : '',
      );

      sections.add(section);
    }

    return Container(
      height: context.getSizeHeight(size: 0.2),
      width: context.getSizeWidth(size: 0.22),
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          height: context.getSizeHeight(size: 0.01),
        ),
        itemCount: sections.length,
        itemBuilder: (context, index) => Row(
          children: [
            Container(
              height: context.getSizeHeight(size: 0.02),
              width: context.getSizeWidth(size: 0.02),
              color: sections[index].color,
            ).getPaddingOnly(context: context, right: 0.004),
            Expanded(
              child: CustomText(
                  text: sections[index].title,
                  color: ColorConstants.defaultTextColor),
            )
          ],
        ),
      ).getPaddingOnly(context: context, bottom: 0.04),
    );
  }
}
