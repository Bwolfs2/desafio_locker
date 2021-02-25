import 'package:flutter/material.dart';

class LockerSliderWidget extends StatefulWidget {
  @override
  _LockerSliderWidgetState createState() => _LockerSliderWidgetState();
}

class _LockerSliderWidgetState extends State<LockerSliderWidget> {
  bool isOff = false;
  double lastPosition;
  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      elevation: 2,
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Container(
            width: 180,
            height: 240,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xff27407A),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    width: 100,
                    height: 200,
                    alignment: isOff ? Alignment.topCenter : Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Color(0xff0B2152),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.lock_open,
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  padding: const EdgeInsets.all(8),
                  width: 100,
                  height: 200,
                  alignment: isOff ? Alignment.topCenter : Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Material(
                    color: Color(0xff233B77),
                    borderRadius: BorderRadius.circular(100),
                    child: GestureDetector(
                      onVerticalDragStart: (details) {
                        lastPosition = 0;
                      },
                      onVerticalDragUpdate: (details) {
                        if (details.localPosition.dy > 0) {
                          setState(() {
                            isOff = false;
                          });
                        } else {
                          setState(() {
                            isOff = true;
                          });
                        }
                      },
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(backgroundColor: isOff ? const Color(0xff1F3773) : Colors.white, radius: 5),
                            Container(
                              height: 10,
                              margin: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xff294583),
                                    Color(0xff0C245A),
                                  ],
                                ),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: isOff ? const Color(0xff2FD89D) : const Color(0xff1F3773),
                              radius: 5,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(top: 15, left: 15, child: CircleAvatar(backgroundColor: Color(0xff1F3773), radius: 3)),
          Positioned(top: 15, right: 15, child: CircleAvatar(backgroundColor: Color(0xff1F3773), radius: 3)),
          Positioned(bottom: 15, left: 15, child: CircleAvatar(backgroundColor: Color(0xff1F3773), radius: 3)),
          Positioned(bottom: 15, right: 15, child: CircleAvatar(backgroundColor: Color(0xff1F3773), radius: 3)),
        ],
      ),
    );
  }
}
