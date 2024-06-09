// ignore_for_file: prefer_collection_literals, unnecessary_new

class StudentSurveyModel {
  String? career;
  String? citizenship;
  String? department;
  String? gender;
  String? housingType;
  String? nationality;
  String? primaryProgramme;
  int? q1HowManyEventsHaveYouVolunteeredIn;
  int? q2HowManyEventsHaveYouParticipatedIn;
  int? q3HowManyActivitiesAreYouInterestedIn;
  int? q4HowManyActivitiesAreYouPassionateAbout;
  int? q5WhatAreYourLevelsOfStress;
  int? q6HowSatisfiedYouAreWithYourStudentLife;
  int? q7HowMuchEffortDoYouMakeToInteractWithOthers;
  int? q8AboutHowEventsAreYouAwareAbout;
  String? q9WhatIsAnIdealStudentLife;
  int? yearOfStudy;
  int? yearSinceMatriculation;
  int? responseId;

  StudentSurveyModel(
      {this.career,
      this.citizenship,
      this.department,
      this.gender,
      this.housingType,
      this.nationality,
      this.primaryProgramme,
      this.q1HowManyEventsHaveYouVolunteeredIn,
      this.q2HowManyEventsHaveYouParticipatedIn,
      this.q3HowManyActivitiesAreYouInterestedIn,
      this.q4HowManyActivitiesAreYouPassionateAbout,
      this.q5WhatAreYourLevelsOfStress,
      this.q6HowSatisfiedYouAreWithYourStudentLife,
      this.q7HowMuchEffortDoYouMakeToInteractWithOthers,
      this.q8AboutHowEventsAreYouAwareAbout,
      this.q9WhatIsAnIdealStudentLife,
      this.yearOfStudy,
      this.yearSinceMatriculation,
      this.responseId});

  StudentSurveyModel.fromJson(Map<String, dynamic> json) {
    career = json['Career'];
    citizenship = json['Citizenship'];
    department = json['Department'];
    gender = json['Gender'];
    housingType = json['Housing Type'];
    nationality = json['Nationality'];
    primaryProgramme = json['Primary Programme'];
    q1HowManyEventsHaveYouVolunteeredIn =
        json['Q1-How many events have you Volunteered in ?'];
    q2HowManyEventsHaveYouParticipatedIn =
        json['Q2-How many events have you Participated in ?'];
    q3HowManyActivitiesAreYouInterestedIn =
        json['Q3-How many activities are you Interested in ?'];
    q4HowManyActivitiesAreYouPassionateAbout =
        json['Q4-How many activities are you Passionate about ?'];
    q5WhatAreYourLevelsOfStress = json['Q5-What are your levels of stress ?'];
    q6HowSatisfiedYouAreWithYourStudentLife =
        json['Q6-How Satisfied You are with your Student Life ?'];
    q7HowMuchEffortDoYouMakeToInteractWithOthers =
        json['Q7-How much effort do you make to interact with others ?'];
    q8AboutHowEventsAreYouAwareAbout =
        json['Q8-About How events are you aware about ?'];
    q9WhatIsAnIdealStudentLife = json['Q9-What is an ideal student life ?'];
    yearOfStudy = json['Year of Study'];
    yearSinceMatriculation = json['Year since Matriculation'];
    responseId = json['response_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Career'] = career;
    data['Citizenship'] = citizenship;
    data['Department'] = department;
    data['Gender'] = gender;
    data['Housing Type'] = housingType;
    data['Nationality'] = nationality;
    data['Primary Programme'] = primaryProgramme;
    data['Q1-How many events have you Volunteered in ?'] =
        q1HowManyEventsHaveYouVolunteeredIn;
    data['Q2-How many events have you Participated in ?'] =
        q2HowManyEventsHaveYouParticipatedIn;
    data['Q3-How many activities are you Interested in ?'] =
        q3HowManyActivitiesAreYouInterestedIn;
    data['Q4-How many activities are you Passionate about ?'] =
        q4HowManyActivitiesAreYouPassionateAbout;
    data['Q5-What are your levels of stress ?'] = q5WhatAreYourLevelsOfStress;
    data['Q6-How Satisfied You are with your Student Life ?'] =
        q6HowSatisfiedYouAreWithYourStudentLife;
    data['Q7-How much effort do you make to interact with others ?'] =
        q7HowMuchEffortDoYouMakeToInteractWithOthers;
    data['Q8-About How events are you aware about ?'] =
        q8AboutHowEventsAreYouAwareAbout;
    data['Q9-What is an ideal student life ?'] = q9WhatIsAnIdealStudentLife;
    data['Year of Study'] = yearOfStudy;
    data['Year since Matriculation'] = yearSinceMatriculation;
    data['response_id'] = responseId;
    return data;
  }
}
