import 'package:button_animated/widgets/locker_slider_widget.dart';
import 'package:button_animated/widgets/locker_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff233B77),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Vault'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 2,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    PhysicalModel(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      elevation: 7,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.width / 2,
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Color(0xff223C78),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(backgroundImage: NetworkImage('https://data.whicdn.com/images/33981383/original.jpg')),
                      ),
                    ),
                    Positioned(
                      top: 15,
                      right: 15,
                      child: PhysicalModel(
                        color: Colors.transparent,
                        elevation: 7,
                        shape: BoxShape.circle,
                        child: CircleAvatar(
                          backgroundColor: Color(0xff223C78),
                          radius: 15,
                          child: Icon(
                            Icons.lock_open_outlined,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bwolf',
                style: TextStyle(color: Colors.white, fontSize: 30),
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '+55 54 999999999',
                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),
              )
            ],
          ),
          SizedBox(height: 40),
          LockerSliderWidget()
        ],
      ),
    );
  }
}
