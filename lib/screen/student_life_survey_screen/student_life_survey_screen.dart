import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:yagmur/core/constants/color_constants.dart';
import 'package:yagmur/core/extensions/padding_extension.dart';
import 'package:yagmur/core/extensions/size_extension.dart';
import 'package:yagmur/core/helper/statistic_view_student_life.dart';
import 'package:yagmur/core/widgets/elevated_button_widget.dart';
import 'package:yagmur/core/widgets/label_text_widget.dart';
import 'package:yagmur/core/widgets/progress_indicator.dart';
import 'package:yagmur/core/widgets/title_text_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:yagmur/screen/student_life_survey_screen/student_lift_survey_screen_model/student_life_survey_screen_model.dart';

import '../../core/helper/text_forms.dart';

class StudentLifeSurveyScreen extends StatelessWidget {
  StudentLifeSurveyScreen({super.key}) {
    reaction((_) async => await _surveyModel.initialize(), (_) {});
  }
  final StudentLifeSurveyScreenModel _surveyModel =
      StudentLifeSurveyScreenModel();
  List<Color> colorList = [Colors.blue, Colors.red, Colors.purple];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: CustomTitleText(
              title: 'Student Life Survey',
              color: ColorConstants.titleColor,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: context.getSizeHeight(size: 0.02)),
            margin: EdgeInsets.only(top: context.getSizeHeight(size: 0.02)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorConstants.surveyColor,
            ),
            child: Observer(builder: (context) {
              return Column(
                children: [
                  TextForms(
                      isNumber: false,
                      question: _surveyModel.questions[0],
                      questionController: _surveyModel.careerController),
                  TextForms(
                      isNumber: false,
                      question: _surveyModel.questions[1],
                      questionController: _surveyModel.citizenshipController),
                  TextForms(
                      isNumber: false,
                      question: _surveyModel.questions[2],
                      questionController: _surveyModel.nationalityController),
                  TextForms(
                      isNumber: true,
                      question: _surveyModel.questions[3],
                      questionController:
                          _surveyModel.yearSinceMatriculationController),
                  TextForms(
                      isNumber: true,
                      question: _surveyModel.questions[4],
                      questionController: _surveyModel.yearOfStudyController),
                  TextForms(
                      isNumber: false,
                      question: _surveyModel.questions[5],
                      questionController:
                          _surveyModel.primaryProgrammeController),
                  TextForms(
                      isNumber: false,
                      question: _surveyModel.questions[6],
                      questionController: _surveyModel.genderController),
                  TextForms(
                      isNumber: false,
                      question: _surveyModel.questions[7],
                      questionController: _surveyModel.departmentController),
                  TextForms(
                      isNumber: false,
                      question: _surveyModel.questions[8],
                      questionController: _surveyModel.housingTypeController),
                  TextForms(
                      isNumber: true,
                      question: _surveyModel.questions[9],
                      questionController: _surveyModel.q1Controller),
                  TextForms(
                      isNumber: true,
                      question: _surveyModel.questions[10],
                      questionController: _surveyModel.q2Controller),
                  TextForms(
                      isNumber: true,
                      question: _surveyModel.questions[11],
                      questionController: _surveyModel.q3Controller),
                  TextForms(
                      isNumber: true,
                      question: _surveyModel.questions[12],
                      questionController: _surveyModel.q4Controller),
                  TextForms(
                      isNumber: true,
                      question: _surveyModel.questions[13],
                      questionController: _surveyModel.q5Controller),
                  TextForms(
                      isNumber: true,
                      question: _surveyModel.questions[14],
                      questionController: _surveyModel.q6Controller),
                  TextForms(
                      isNumber: true,
                      question: _surveyModel.questions[15],
                      questionController: _surveyModel.q7Controller),
                  TextForms(
                      isNumber: true,
                      question: _surveyModel.questions[16],
                      questionController: _surveyModel.q8Controller),
                  TextForms(
                      isNumber: false,
                      question: _surveyModel.questions[17],
                      questionController: _surveyModel.q9Controller),
                  CustomElevatedButton(
                          buttonText: 'Gönder',
                          onPressed: () async {
                            // if (_surveyModel.careerController.value.text == '' ||
                            //     _surveyModel.citizenshipController.value.text ==
                            //         '' ||
                            //     _surveyModel.nationalityController.value.text ==
                            //         '' ||
                            //     _surveyModel.yearSinceMatriculationController.value
                            //             .text.runtimeType !=
                            //         int ||
                            //     _surveyModel.yearOfStudyController.value.text
                            //             .runtimeType !=
                            //         int ||
                            //     _surveyModel.primaryProgrammeController.value.text ==
                            //         '' ||
                            //     _surveyModel.genderController.value.text == '' ||
                            //     _surveyModel.departmentController.value.text ==
                            //         '' ||
                            //     _surveyModel.housingTypeController.value.text ==
                            //         '' ||
                            //     _surveyModel.q1Controller.value.text.runtimeType !=
                            //         int ||
                            //     _surveyModel.q2Controller.value.text.runtimeType !=
                            //         int ||
                            //     _surveyModel.q3Controller.value.text.runtimeType !=
                            //         int ||
                            //     _surveyModel.q4Controller.value.text.runtimeType !=
                            //         int ||
                            //     _surveyModel.q5Controller.value.text.runtimeType !=
                            //         int ||
                            //     _surveyModel.q6Controller.value.text.runtimeType !=
                            //         int ||
                            //     _surveyModel.q7Controller.value.text.runtimeType !=
                            //         int ||
                            //     _surveyModel.q8Controller.value.text.runtimeType !=
                            //         int ||
                            //     _surveyModel.q9Controller.value.text == '') {
                            //   context.snackBarExtension(
                            //       content: 'Hatalı ya da eksik veri girdiniz.');
                            //   log(_surveyModel.q8Controller.value.text.runtimeType
                            //       .toString());
                            // } else {
                            await _surveyModel.postSurveyData(
                                context: context,
                                career:
                                    _surveyModel.careerController.value.text,
                                citizenship: _surveyModel
                                    .citizenshipController.value.text,
                                nationality: _surveyModel
                                    .nationalityController.value.text,
                                yearSinceMatriculation: int.parse(_surveyModel
                                    .yearSinceMatriculationController
                                    .value
                                    .text),
                                yearOfStudy: int.parse(_surveyModel
                                    .yearOfStudyController.value.text),
                                primaryProgramme: _surveyModel
                                    .primaryProgrammeController.value.text,
                                gender:
                                    _surveyModel.genderController.value.text,
                                department: _surveyModel
                                    .departmentController.value.text,
                                housingType: _surveyModel
                                    .housingTypeController.value.text,
                                q1: int.parse(_surveyModel.q1Controller.value.text),
                                q2: int.parse(_surveyModel.q2Controller.value.text),
                                q3: int.parse(_surveyModel.q3Controller.value.text),
                                q4: int.parse(_surveyModel.q4Controller.value.text),
                                q5: int.parse(_surveyModel.q5Controller.value.text),
                                q6: int.parse(_surveyModel.q6Controller.value.text),
                                q7: int.parse(_surveyModel.q7Controller.value.text),
                                q8: int.parse(_surveyModel.q8Controller.value.text),
                                q9: _surveyModel.q9Controller.value.text);
                          })
                      .getPadding(
                          context: context, sizeWidth: 0, sizeHeight: 0.02),
                  CustomElevatedButton(
                      buttonText: 'İstatistikleri Görüntüle',
                      onPressed: () async =>
                          await _surveyModel.getSurveyStatics()),
                  Observer(builder: (context) {
                    return _surveyModel.isLoading
                        ? Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  StatisticViewStudentLife(
                                      surveyName: 'Housing Type',
                                      isHousingType: true,
                                      datas:
                                          _surveyModel.surveyDataHousingType),
                                  StatisticViewStudentLife(
                                      surveyName: 'Nationality',
                                      isNationality: true,
                                      datas:
                                          _surveyModel.surveyDataNationality),
                                  StatisticViewStudentLife(
                                      surveyName: 'Career',
                                      isCareer: true,
                                      datas: _surveyModel.surveyDataCareer),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  StatisticViewStudentLife(
                                      surveyName: 'Citizenship',
                                      isCitizenship: true,
                                      datas:
                                          _surveyModel.surveyDataCitizenship),
                                  StatisticViewStudentLife(
                                      surveyName: 'Year Since Matriculation',
                                      isYearSinceMatriculation: true,
                                      datas: _surveyModel
                                          .surveyDataYearSinceMatriculation),
                                  StatisticViewStudentLife(
                                      surveyName: 'Year of Study',
                                      isYearOfStudy: true,
                                      datas:
                                          _surveyModel.surveyDataYearOfStudy),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  StatisticViewStudentLife(
                                      surveyName: 'Primary Programme',
                                      isPrimaryProgramme: true,
                                      datas: _surveyModel
                                          .surveyDataPrimaryProgramme),
                                  StatisticViewStudentLife(
                                      surveyName: 'Gender',
                                      isGender: true,
                                      datas: _surveyModel.surveyDataGender),
                                  StatisticViewStudentLife(
                                      surveyName: 'Department',
                                      isDepartment: true,
                                      datas: _surveyModel.surveyDataDepartment),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  StatisticViewStudentLife(
                                      surveyName: 'Q1',
                                      isQ1: true,
                                      datas: _surveyModel.surveyDataQ1),
                                  StatisticViewStudentLife(
                                      surveyName: 'Q2',
                                      isQ2: true,
                                      datas: _surveyModel.surveyDataQ2),
                                  StatisticViewStudentLife(
                                      surveyName: 'Q3',
                                      isQ3: true,
                                      datas: _surveyModel.surveyDataQ3),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  StatisticViewStudentLife(
                                      surveyName: 'Q4',
                                      isQ4: true,
                                      datas: _surveyModel.surveyDataQ4),
                                  StatisticViewStudentLife(
                                      surveyName: 'Q5',
                                      isQ5: true,
                                      datas: _surveyModel.surveyDataQ5),
                                  StatisticViewStudentLife(
                                      surveyName: 'Q6',
                                      isQ6: true,
                                      datas: _surveyModel.surveyDataQ6),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  StatisticViewStudentLife(
                                      surveyName: 'Q7',
                                      isQ7: true,
                                      datas: _surveyModel.surveyDataQ7),
                                  StatisticViewStudentLife(
                                      surveyName: 'Q8',
                                      isQ8: true,
                                      datas: _surveyModel.surveyDataQ8),
                                  StatisticViewStudentLife(
                                      surveyName: 'Q9',
                                      isQ9: true,
                                      datas: _surveyModel.surveyDataQ9),
                                ],
                              )
                            ],
                          ).getPaddingOnly(context: context, top: 0.02)
                        : _surveyModel.isCircular
                            ? const CustomCircularProgress()
                                .getPaddingOnly(context: context, top: 0.02)
                            : const SizedBox();
                  })
                ],
              );
            }),
          )
        ],
      ).getPaddingOnly(context: context, top: 0.04, right: 0.02, left: 0.02),
    );
  }

  // List<PieChartSectionData> _getSections() {
  //   return _surveyModel.surveyDataHousingType.map((data) {
  //     return PieChartSectionData(
  //       color: Colors.blue,
  //       value: double.parse(data.percentage!),
  //       title: '${data.housingType}: %${data.percentage}',
  //       radius: 50,
  //       titlePositionPercentageOffset: BorderSide.strokeAlignCenter,
  //       showTitle: true,
  //       badgePositionPercentageOffset:
  //           BouncingScrollSimulation.maxSpringTransferVelocity,
  //       titleStyle: const TextStyle(
  //         fontSize: 16,
  //         fontWeight: FontWeight.bold,
  //         color: Colors.black,
  //       ),
  //     );
  //   }).toList();
  // }

  _getSectionsData({required BuildContext context, required int index}) {
    return _surveyModel.surveyDataHousingType.length > index - 1
        ? Row(children: [
            Column(
              children: [
                CustomLabelText(
                    label:
                        _surveyModel.surveyDataHousingType[index].housingType ??
                            'Veri Yüklenirken Bir Hata Oluştu ',
                    isColorNotWhite: true),
                Container(
                  width: context.getSizeWidth(size: 0.04),
                  height: context.getSizeHeight(size: 0.04),
                  color: Colors.blue,
                )
              ],
            ),
          ])
        : const SizedBox();
  }
}
