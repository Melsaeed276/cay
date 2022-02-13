import 'package:cay_platform/services/auth_service/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../model/user.dart';
import '../../theme/theme.dart';
import 'info_pages.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with SingleTickerProviderStateMixin {
  late final PageController _pageController;
  int pageCounter = 0;
  bool isLast = false;
  late User user;
  final AuthService _authService = AuthService();

  @override
  void initState() {
    _pageController = PageController();
    if (_authService.getUser() != null) {
      user = User(uID: _authService.getUser()!.uid);
    }

    super.initState();
  }

  final pages = [
    "User info",
    "goal",
    "trainings",
    'view',
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final info = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.only(bottom: 100),
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              if (index == pages.length - 1) {
                isLast = true;
              } else {
                isLast = false;
              }
            });
          },
          children: [
            for (final tab in pages)
              InfoPages(
                name: tab,
              ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        height: 65,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Row(
          children: [
            const SizedBox(width: 20),
            Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: pages.length,
                onDotClicked: (index) {
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                  if (index == pages.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    isLast = true;
                  }
                },
                effect: WormEffect(
                  spacing: 16,
                  dotColor: Theme.of(context).backgroundColor,
                  activeDotColor: Theme.of(context).primaryColor,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_pageController.page!.round() == pages.length - 1) {
                    print('is last');
                  } else {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: isLast == true
                    ? Text(
                        'Submit',
                        style: Theme.of(context).textTheme.button,
                      )
                    : Icon(Icons.navigate_next_outlined,
                        color: Theme.of(context).textTheme.button!.color),
                style: buttonStyle(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
