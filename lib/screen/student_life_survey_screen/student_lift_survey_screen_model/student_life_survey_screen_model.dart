import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:yagmur/core/extensions/snackbar_extension.dart';
import 'package:yagmur/service/student_survey_service/sub_services/career/career_model/career_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/career/career_service.dart';
import 'package:yagmur/service/student_survey_service/sub_services/citizenship/citizenship_model/citizenship_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/citizenship/citizenship_service.dart';
import 'package:yagmur/service/student_survey_service/sub_services/department/department_model/department_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/department/department_service.dart';
import 'package:yagmur/service/student_survey_service/sub_services/gender/gender_model/gender_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/gender/gender_service.dart';
import 'package:yagmur/service/student_survey_service/sub_services/housing_type_statics/housing_type_statics_service.dart';
import 'package:yagmur/service/student_survey_service/sub_services/nationality/nationality_model.dart/nationality_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/nationality/nationality_service.dart';
import 'package:yagmur/service/student_survey_service/sub_services/housing_type_statics/housing_type_statics_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/primary_programme/primary_programme_model/primary_programme_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/primary_programme/primary_programme_service.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q1/q1_model/q1_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q1/q1_service.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q2/q2_model/q2_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q2/q2_service.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q3/q3_model/q3_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q3/q3_service.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q4/q4_model/q4_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q4/q4_service.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q5/q5_model/q5_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q5/q5_service.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q6/q6_model/q6_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q6/q6_service.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q7/q7_model/q7_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q7/q7_service.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q8/q8_model/q8_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q8/q8_service.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q9/q9_model/q9_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/q9/q9_service.dart';
import 'package:yagmur/service/student_survey_service/sub_services/year_of_study/year_of_study_model/year_of_study_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/year_of_study/year_of_study_service.dart';
import 'package:yagmur/service/student_survey_service/sub_services/year_since_matriculation/year_since_matriculation_model/year_since_matriculation_model.dart';
import 'package:yagmur/service/student_survey_service/sub_services/year_since_matriculation/year_since_matriculation_service.dart';

import '../../../service/student_survey_service/student_survey_service.dart';
part 'student_life_survey_screen_model.g.dart';

class StudentLifeSurveyScreenModel = _StudentLifeSurveyScreenModelBase
    with _$StudentLifeSurveyScreenModel;

abstract class _StudentLifeSurveyScreenModelBase with Store {
  @observable
  bool isLoading = false;
  @observable
  bool isCircular = false;
  @observable
  List<HousingTypeStaticsModel> surveyDataHousingType = ObservableList.of([]);
  final HousingTypeStaticsService _staticsService = HousingTypeStaticsService();

  @observable
  List<NationalityModel> surveyDataNationality = ObservableList.of([]);
  final NationalityService _nationalityService = NationalityService();

  @observable
  List<CareerModel> surveyDataCareer = ObservableList.of([]);
  final CareerService _careerService = CareerService();

  @observable
  List<DepartmentModel> surveyDataDepartment = ObservableList.of([]);
  final DepartmentService _departmentService = DepartmentService();

  @observable
  List<CitizenshipModel> surveyDataCitizenship = ObservableList.of([]);
  final CitizenshipService _citizenshipService = CitizenshipService();

  @observable
  List<YearSinceMatriculationModel> surveyDataYearSinceMatriculation =
      ObservableList.of([]);
  final YearSinceMatriculationService _yearSinceMatriculationService =
      YearSinceMatriculationService();

  @observable
  List<YearOfStudyModel> surveyDataYearOfStudy = ObservableList.of([]);
  final YearOfStudyService _ofStudyService = YearOfStudyService();

  @observable
  List<PrimaryProgrammeModel> surveyDataPrimaryProgramme =
      ObservableList.of([]);
  final PrimaryProgrammeService _primaryProgrammeService =
      PrimaryProgrammeService();

  @observable
  List<GenderModel> surveyDataGender = ObservableList.of([]);
  final GenderService _genderService = GenderService();

  @observable
  List<Q1Model> surveyDataQ1 = ObservableList.of([]);
  final Q1Service _q1service = Q1Service();

  @observable
  List<Q2Model> surveyDataQ2 = ObservableList.of([]);
  final Q2Service _q2service = Q2Service();

  @observable
  List<Q3Model> surveyDataQ3 = ObservableList.of([]);
  final Q3Service _q3service = Q3Service();

  @observable
  List<Q4Model> surveyDataQ4 = ObservableList.of([]);
  final Q4Service _q4service = Q4Service();

  @observable
  List<Q5Model> surveyDataQ5 = ObservableList.of([]);
  final Q5Service _q5service = Q5Service();
  @observable
  List<Q6Model> surveyDataQ6 = ObservableList.of([]);
  final Q6Service _q6service = Q6Service();
  @observable
  List<Q7Model> surveyDataQ7 = ObservableList.of([]);
  final Q7Service _q7service = Q7Service();

  @observable
  List<Q8Model> surveyDataQ8 = ObservableList.of([]);
  final Q8Service _q8service = Q8Service();

  @observable
  List<Q9Model> surveyDataQ9 = ObservableList.of([]);
  final Q9Service _q9service = Q9Service();

  @observable
  TextEditingController careerController = TextEditingController();
  @observable
  TextEditingController citizenshipController = TextEditingController();
  @observable
  TextEditingController nationalityController = TextEditingController();
  @observable
  TextEditingController yearSinceMatriculationController =
      TextEditingController();
  @observable
  TextEditingController yearOfStudyController = TextEditingController();
  @observable
  TextEditingController primaryProgrammeController = TextEditingController();
  @observable
  TextEditingController genderController = TextEditingController();
  @observable
  TextEditingController departmentController = TextEditingController();
  @observable
  TextEditingController housingTypeController = TextEditingController();
  @observable
  TextEditingController q1Controller = TextEditingController();
  @observable
  TextEditingController q2Controller = TextEditingController();
  @observable
  TextEditingController q3Controller = TextEditingController();
  @observable
  TextEditingController q4Controller = TextEditingController();
  @observable
  TextEditingController q5Controller = TextEditingController();
  @observable
  TextEditingController q6Controller = TextEditingController();
  @observable
  TextEditingController q7Controller = TextEditingController();
  @observable
  TextEditingController q8Controller = TextEditingController();
  @observable
  TextEditingController q9Controller = TextEditingController();
  @observable
  List<String> questions = ObservableList.of([
    'Career',
    'Citizenship',
    'Nationality',
    'Year since Matriculation',
    'Year of Study',
    'Primary Programme',
    'Gender',
    'Department',
    'Housing Type',
    'Q1-How many events have you Volunteered in?',
    'Q2-How many events have you Participated in?',
    'Q3-How many activities are you Interested in?',
    'Q4-How many activities are you Passionate about?',
    'Q5-What are your levels of stress?',
    'Q6-How Satisfied You are with your Student Life?',
    'Q7-How much effort do you make to interact with others?',
    'Q8-About How events are you aware about?',
    'Q9-What is an ideal student life?'
  ]);
  final StudentServiceSurvey _serviceSurvey = StudentServiceSurvey();

  Future<void> initialize() async {
    isCircular = false;

    surveyDataHousingType = await _staticsService.getStatics();
    surveyDataCareer = await _careerService.getCareerData();
    surveyDataCitizenship = await _citizenshipService.getCitizenshipData();
    surveyDataDepartment = await _departmentService.getDepartmentData();
    surveyDataGender = await _genderService.getGenderData();
    surveyDataPrimaryProgramme =
        await _primaryProgrammeService.getPrimaryProgrammeData();
    surveyDataYearOfStudy = await _ofStudyService.getYearOfStudyData();
    surveyDataYearSinceMatriculation =
        await _yearSinceMatriculationService.getYearSinceMatriculationData();

    surveyDataQ1 = await _q1service.getQ1Data();
    surveyDataQ2 = await _q2service.getQ2Data();
    surveyDataQ3 = await _q3service.getQ3Data();
    surveyDataQ4 = await _q4service.getQ4Data();
    surveyDataQ5 = await _q5service.getQ5Data();
    surveyDataQ6 = await _q6service.getQ6Data();
    surveyDataQ7 = await _q7service.getQ7Data();
    surveyDataQ8 = await _q8service.getQ8Data();
    surveyDataQ9 = await _q9service.getQ9Data();
    surveyDataNationality = await _nationalityService
        .getNatioanlityData()
        .whenComplete(() => getSurveyStatics());
    // await getSurveyStatics().whenComplete(() => isLoading = true);
  }

  @action
  Future<void> getSurveyStatics() async {
    isCircular = true;
    if (surveyDataNationality.length > 0) {
      isLoading = true;
    }
  }

  @action
  Future<void> postSurveyData(
      {required String career,
      required String citizenship,
      required String nationality,
      required int yearSinceMatriculation,
      required int yearOfStudy,
      required String primaryProgramme,
      required String gender,
      required String department,
      required String housingType,
      required int q1,
      required int q2,
      required int q3,
      required int q4,
      required int q5,
      required int q6,
      required int q7,
      required int q8,
      required String q9,
      required BuildContext context}) async {
    if (career == '' ||
        citizenship == '' ||
        yearSinceMatriculation < 0 ||
        yearOfStudy < 0 ||
        primaryProgramme == '' ||
        gender == '' ||
        department == '' ||
        housingType == '' ||
        q1 < 0 ||
        q2 < 0 ||
        q3 < 0 ||
        q4 < 0 ||
        q5 < 0 ||
        q6 < 0 ||
        q7 < 0 ||
        q8 < 0 ||
        q9 == '') {
      await context.snackBarExtension(content: 'Bir Hata Yaptınız');
      return;
    } else {
      await _serviceSurvey
          .postSurveyData(
              career: career,
              citizenship: citizenship,
              nationality: nationality,
              yearSinceMatriculation: yearSinceMatriculation,
              yearOfStudy: yearOfStudy,
              primaryProgramme: primaryProgramme,
              gender: gender,
              department: department,
              housingType: housingType,
              q1: q1,
              q2: q2,
              q3: q3,
              q4: q4,
              q5: q5,
              q6: q6,
              q7: q7,
              q8: q8,
              q9: q9)
          .whenComplete(() {
        careerController.clear();
        citizenshipController.clear();

        nationalityController.clear();

        yearSinceMatriculationController.clear();
        yearOfStudyController.clear();
        primaryProgrammeController.clear();

        genderController.clear();

        departmentController.clear();

        housingTypeController.clear();

        q1Controller.clear();

        q2Controller.clear();

        q3Controller.clear();

        q4Controller.clear();

        q5Controller.clear();

        q6Controller.clear();
        q7Controller.clear();

        q8Controller.clear();

        q9Controller.clear();
      });
    }
  }
}
