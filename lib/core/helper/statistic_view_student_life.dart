import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:yagmur/core/extensions/padding_extension.dart';
import 'package:yagmur/core/extensions/size_extension.dart';
import 'package:yagmur/core/widgets/label_text_widget.dart';
import 'package:yagmur/core/widgets/text_widget.dart';

import '../constants/color_constants.dart';

// ignore: must_be_immutable
class StatisticViewStudentLife extends StatelessWidget {
  final List datas;
  bool isHousingType;
  bool isNationality;
  bool isCareer;
  bool isCitizenship;
  bool isYearSinceMatriculation;
  bool isYearOfStudy;
  bool isPrimaryProgramme;
  bool isGender;
  bool isDepartment;
  bool isQ1;
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
  bool isQ2;
  bool isQ3;
  bool isQ4;
  bool isQ5;
  bool isQ6;
  bool isQ7;
  bool isQ8;
  bool isQ9;
  final String surveyName;
  StatisticViewStudentLife({
    super.key,
    this.isHousingType = false,
    this.isNationality = false,
    this.isCareer = false,
    this.isCitizenship = false,
    this.isDepartment = false,
    this.isGender = false,
    this.isPrimaryProgramme = false,
    this.isQ1 = false,
    this.isQ2 = false,
    this.isQ3 = false,
    this.isQ4 = false,
    this.isQ5 = false,
    this.isQ6 = false,
    this.isQ7 = false,
    this.isQ8 = false,
    this.isQ9 = false,
    this.isYearOfStudy = false,
    this.isYearSinceMatriculation = false,
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
        title: isHousingType
            ? '${data.housingType}: %${data.percentage}'
            : isNationality
                ? '${data.nationality}: %${data.percentage}'
                : isCareer
                    ? '${data.career}: %${data.percentage}'
                    : isCitizenship
                        ? '${data.citizenship}: %${data.percentage}'
                        : isDepartment
                            ? '${data.department}: %${data.percentage}'
                            : isGender
                                ? '${data.gender}: %${data.percentage}'
                                : isPrimaryProgramme
                                    ? '${data.primaryProgramme}: %${data.percentage}'
                                    : isQ1
                                        ? '${data.q1HowManyEventsHaveYouVolunteeredIn}: %${data.percentage}'
                                        : isQ2
                                            ? '${data.q2HowManyEventsHaveYouParticipatedIn}: %${data.percentage}'
                                            : isQ3
                                                ? '${data.q3HowManyActivitiesAreYouInterestedIn}: %${data.percentage}'
                                                : isQ4
                                                    ? '${data.q4HowManyActivitiesAreYouPassionateAbout}: %${data.percentage}'
                                                    : isQ5
                                                        ? '${data.q5WhatAreYourLevelsOfStress}: %${data.percentage}'
                                                        : isQ6
                                                            ? '${data.q6HowSatisfiedYouAreWithYourStudentLife}: %${data.percentage}'
                                                            : isQ7
                                                                ? '${data.q7HowMuchEffortDoYouMakeToInteractWithOthers}: %${data.percentage}'
                                                                : isQ8
                                                                    ? '${data.q8AboutHowEventsAreYouAwareAbout}: %${data.percentage}'
                                                                    : isQ9
                                                                        ? '${data.q9WhatIsAnIdealStudentLife}: %${data.percentage}'
                                                                        : isYearOfStudy
                                                                            ? '${data.yearOfStudy}: %${data.percentage}'
                                                                            : isYearSinceMatriculation
                                                                                ? '${data.yearSinceMatriculation}: %${data.percentage}'
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
        title: isHousingType
            ? '${data.housingType}: %${data.percentage}'
            : isNationality
                ? '${data.nationality}: %${data.percentage}'
                : isCareer
                    ? '${data.career}: %${data.percentage}'
                    : isCitizenship
                        ? '${data.citizenship}: %${data.percentage}'
                        : isDepartment
                            ? '${data.department}: %${data.percentage}'
                            : isGender
                                ? '${data.gender}: %${data.percentage}'
                                : isPrimaryProgramme
                                    ? '${data.primaryProgramme}: %${data.percentage}'
                                    : isQ1
                                        ? '${data.q1HowManyEventsHaveYouVolunteeredIn}: %${data.percentage}'
                                        : isQ2
                                            ? '${data.q2HowManyEventsHaveYouParticipatedIn}: %${data.percentage}'
                                            : isQ3
                                                ? '${data.q3HowManyActivitiesAreYouInterestedIn}: %${data.percentage}'
                                                : isQ4
                                                    ? '${data.q4HowManyActivitiesAreYouPassionateAbout}: %${data.percentage}'
                                                    : isQ5
                                                        ? '${data.q5WhatAreYourLevelsOfStress}: %${data.percentage}'
                                                        : isQ6
                                                            ? '${data.q6HowSatisfiedYouAreWithYourStudentLife}: %${data.percentage}'
                                                            : isQ7
                                                                ? '${data.q7HowMuchEffortDoYouMakeToInteractWithOthers}: %${data.percentage}'
                                                                : isQ8
                                                                    ? '${data.q8AboutHowEventsAreYouAwareAbout}: %${data.percentage}'
                                                                    : isQ9
                                                                        ? '${data.q9WhatIsAnIdealStudentLife}: %${data.percentage}'
                                                                        : isYearOfStudy
                                                                            ? '${data.yearOfStudy}: %${data.percentage}'
                                                                            : isYearSinceMatriculation
                                                                                ? '${data.yearSinceMatriculation}: %${data.percentage}'
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
