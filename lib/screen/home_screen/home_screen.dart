import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yagmur/core/extensions/padding_extension.dart';
import 'package:yagmur/core/extensions/size_extension.dart';
import 'package:yagmur/core/widgets/appbar_with_tabbar_widget.dart';
import 'package:yagmur/core/widgets/label_text_widget.dart';
import 'package:yagmur/screen/student_life_survey_screen/student_life_survey_screen.dart';
import 'package:yagmur/screen/video_games_survey_screen/video_games_survey_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithTabBar(
        centerTitle: true,
        title: 'Survey Cat',
        leading: Image.asset('assets/images/images_cats/cat.png'),
        titleStyle: true,
        tabBar: TabBar(
          controller: _tabController,
          tabs: [
            _tabNames(
                context: context,
                tabTitle: 'Student Life Survey',
                imagePath: 'assets/images/images_surveys/student.png'),
            _tabNames(
                context: context,
                imagePath: 'assets/images/images_surveys/gamer.png',
                tabTitle: 'Video Games Survey'),
            _tabNames(
                context: context,
                imagePath: 'assets/images/images_surveys/cinema.png',
                tabTitle: 'Movie Survey'),
            _tabNames(
                context: context,
                imagePath: 'assets/images/images_surveys/listen.png',
                tabTitle: 'Music Survey')
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          StudentLifeSurveyScreen(),
          VideoGamesSurveyScreen(),
          Center(child: Text('Deneme Sayfa 3')),
          Center(child: Text('Deneme Sayfa 4')),
        ],
      ),
    );
  }

  SingleChildScrollView _tabNames(
      {required BuildContext context,
      required String imagePath,
      required String tabTitle}) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomLabelText(label: tabTitle, isColorNotWhite: true),
          Image.asset(
            imagePath,
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ).getPaddingOnly(context: context, left: 0.004)
        ],
      ),
    );
  }
}
