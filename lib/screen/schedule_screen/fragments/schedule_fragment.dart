import 'package:flutter/material.dart';

import '../../../config/assets.dart';
import '../../../widgets/calender.dart';

class ScheduleFragment extends StatelessWidget {
  const ScheduleFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 350,
            child: Column(
              children: [
                Container(
                  height: 5,
                  color: Color(0xffE1E1E1),
                ),
                Expanded(child: Calender()),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Color(0xffE1E1E1),
              child: const Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Center(
                  child: Text(
                    'Events',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff636363),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Events(),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 60,
        child: FloatingActionButton(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          child: Image.asset(Assets.iconLive),
          backgroundColor: Color(0xffC74444),
          onPressed: () {},
        ),
      ),
    );
  }
}
