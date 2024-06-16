import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zamalek_fans_app/features/login/presentation/screens/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late Timer _photoTimer;
  late Timer _textTimer;
  int _currentPhotoIndex = 0;
  double _textSize = 20.0;
  bool _isTextSizeIncreasing = true;
  String _displayText = 'اسمع';
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    // Timer to change photos automatically every 4 seconds
    _photoTimer = Timer.periodic(Duration(seconds: 4), (timer) {
      setState(() {
        _currentPhotoIndex++;
        if (_currentPhotoIndex == 0) {
          _displayText = 'اسمع';
        } else {
          _displayText = 'اسمع صوت';
        }

        // Animate to the next page
        _pageController.animateToPage(
          _currentPhotoIndex,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        );

        // Stop the timer when reaching the third photo
        if (_currentPhotoIndex >= 2) {
          _photoTimer.cancel();
        }
      });
    });

    // Timer for text size animation every 1.5 seconds
    _textTimer = Timer.periodic(Duration(milliseconds: 1500), (timer) {
      setState(() {
        _textSize = _isTextSizeIncreasing ? 25.0 : 20.0;
        _isTextSizeIncreasing = !_isTextSizeIncreasing;
      });
    });
  }

  @override
  void dispose() {
    _photoTimer.cancel();
    _textTimer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage("assets/images/scaffold_background_image.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Centered content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Animated text based on current photo index
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 500),
                  child: Text(
                    _displayText,
                    key: ValueKey<int>(_currentPhotoIndex),
                    style: TextStyle(fontSize: 24.sp),
                  ),
                ),
                SizedBox(height: 16.h),
                // Container with photos using AnimatedContainer
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: 3, // Assuming you have 3 photos
                      itemBuilder: (context, index) {
                        return Image.asset(
                          index == 0
                              ? "assets/images/1.jpg"
                              : index == 1
                                  ? "assets/images/2.jpg"
                                  : "assets/images/3.jpg",
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                // Clickable text to navigate to the login screen
                Visibility(
                  visible: _currentPhotoIndex == 2,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: AnimatedDefaultTextStyle(
                      duration: Duration(milliseconds: 1500),
                      style: TextStyle(fontSize: _textSize, color: Colors.blue),
                      child: Text('الجمهور'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
