import 'package:flutter/material.dart';
import 'package:instagramtutorialpart2/UI/Widgets/button.dart';
import 'package:instagramtutorialpart2/UI/Widgets/buttontapped.dart';
import 'package:lottie/lottie.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // SET ICONS HERE

  var iconUp = Icons.keyboard_arrow_up;
  var iconDown = Icons.keyboard_arrow_down;
  var iconRight = Icons.keyboard_arrow_right;
  var iconLeft = Icons.keyboard_arrow_left;
  var iconPlay = Icons.play_arrow;
  var iconPause = Icons.pause;
  var iconSprayA = Icons.shower;
  var iconSpray = Icons.shower_outlined;

  //

  bool isStart = false;
  bool buttonPressedUp = false;
  bool buttonPressedDown = false;
  bool buttonPressedRight = false;
  bool buttonPressedLeft = false;
  bool buttonPressedStart = false;
  bool sprayButtonPressed = false;

  void _letsStart() {
    setState(() {
      isStart = false;
      // buttonPressedStart = true ?? false;
      buttonPressedUp = false;
      buttonPressedDown = false;
      buttonPressedRight = false;
      buttonPressedLeft = false;
      sprayButtonPressed = false;
    });
  }

  void _letsStop() {
    setState(() {
      isStart = true;
      buttonPressedStart = false;
      buttonPressedUp = false;
      buttonPressedDown = false;
      buttonPressedRight = false;
      buttonPressedLeft = false;
      sprayButtonPressed = false;
    });
  }

  void _letsStartSpray() {
    setState(() {
      sprayButtonPressed = true;
    });
  }

  void _letsStopSpray() {
    setState(() {
      sprayButtonPressed = false;
    });
  }

  void _letsPressUp() {
    setState(() {
      buttonPressedUp = true;
      buttonPressedDown = false;
      buttonPressedRight = false;
      buttonPressedLeft = false;
    });
  }

  void _letsPressDown() {
    setState(() {
      buttonPressedUp = false;
      buttonPressedDown = true;
      buttonPressedRight = false;
      buttonPressedLeft = false;
    });
  }

  void _letsPressRight() {
    setState(() {
      buttonPressedUp = false;
      buttonPressedDown = false;
      buttonPressedRight = true;
      buttonPressedLeft = false;
    });
  }

  void _letsPressLeft() {
    setState(() {
      buttonPressedUp = false;
      buttonPressedDown = false;
      buttonPressedRight = false;
      buttonPressedLeft = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      backgroundColor: Color(0xff202226),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff202226),
        elevation: 0,
        child: Text(
          'Developed By: instagram.com/DholaSain',
          style: TextStyle(color: Colors.grey[800]),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Lottie.asset('assets/hi-robot.json', width: 200),
            ),
            SizedBox(
              height: 40,
            ),
            isStart
                ? GestureDetector(
                    // Up BUTTON
                    onTap: _letsPressUp,
                    child: buttonPressedUp
                        ? ButtonTapped(
                            icon: iconUp,
                          )
                        : MyButton(
                            icon: iconUp,
                          ),
                  )
                : MyButton(
                    icon: iconUp,
                  ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isStart
                    ? GestureDetector(
                        // Left BUTTON
                        onTap: _letsPressLeft,
                        child: buttonPressedLeft
                            ? ButtonTapped(
                                icon: iconLeft,
                              )
                            : MyButton(
                                icon: iconLeft,
                              ),
                      )
                    : MyButton(
                        icon: iconLeft,
                      ),
                SizedBox(
                  width: 5,
                ),
                isStart
                    ? GestureDetector(
                        onTap: _letsStart,
                        child: PowerButtonTapped(
                          icon: iconPause,
                        ),
                      )
                    : GestureDetector(
                        onTap: _letsStop,
                        child: PowerButton(
                          icon: iconPlay,
                        ),
                      ),
                SizedBox(
                  width: 5,
                ),
                isStart
                    ? GestureDetector(
                        // Right BUTTON
                        onTap: _letsPressRight,
                        child: buttonPressedRight
                            ? ButtonTapped(
                                icon: iconRight,
                              )
                            : MyButton(
                                icon: iconRight,
                              ),
                      )
                    : MyButton(
                        icon: iconRight,
                      ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            isStart
                ? GestureDetector(
                    onTap: _letsPressDown,
                    child: buttonPressedDown
                        ? ButtonTapped(
                            icon: iconDown,
                          )
                        : MyButton(
                            icon: iconDown,
                          ),
                  )
                : MyButton(
                    icon: iconDown,
                  ),
            SizedBox(
              height: 35,
            ),
            isStart
                ? sprayButtonPressed
                    ? GestureDetector(
                        onTap: _letsStopSpray,
                        child: SprayButtonTapped(
                          icon: iconSprayA,
                          label: 'SPRAY',
                        ),
                      )
                    : GestureDetector(
                        onTap: _letsStartSpray,
                        child: SprayButton(
                          icon: iconSpray,
                          label: 'SPRAY',
                        ),
                      )
                : SprayButton(
                    icon: iconSpray,
                    label: 'SPRAY',
                  ),
          ],
        ),
      ),
    );
  }
}
