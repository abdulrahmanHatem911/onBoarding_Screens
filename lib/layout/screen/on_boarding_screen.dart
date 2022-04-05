import 'package:flutter/material.dart';
import 'package:session_7/layout/screen/Login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../const_screen.dart';
import '../../model/cash_helper.dart';
import '../../model/on_bording_model.dart';
import '../widget/on_boarding_item.dart';

// the varible to controll the last page
bool isLast = false;
// ده علشان تيحفظ البيانات و ميخليش الصفحه الي في الاول تظهر تاني
void submit(context) {
  CacheHelper.saveData(key: 'onBoarding', value: true).then((value) {
    if (value) {
      navigateToFinish(
        context,
        const LoginScreen(),
      );
    }
  });
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    // controller fotr page view
    var boardingController = PageController();
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              submit(context);
            },
            child: const Text(
              'SKIP',
              style: TextStyle(
                color: Color(0xff038C7F),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: boardingController,
                onPageChanged: (index) {
                  if (index == screens.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) =>
                    buildBoardingItem(screens[index]),
                itemCount: screens.length,
              ),
            ),
            const SizedBox(height: 40.0),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: boardingController,
                  count: screens.length,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Color(0xff038C7F),
                    dotHeight: 10.0,
                    dotWidth: 10.0,
                    dotColor: Color(0xffA9D9D0),
                    expansionFactor: 4.0,
                    spacing: 5.0,
                  ),
                ),
                const Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    if (isLast) {
                      submit(context);
                      print('navigate done');
                    } else {
                      boardingController.nextPage(
                        duration: const Duration(milliseconds: 650),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    }
                  },
                  child: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
