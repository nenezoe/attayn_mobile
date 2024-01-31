import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../config/assets.dart';
import '../screen/schedule_screen/schedule_controller.dart';

class Calender extends StatelessWidget {
  Calender({Key? key}) : super(key: key);

  final _ = Get.find<ScheduleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffFFC5C5), Color(0xffEC7575)])),
          child: Column(
            children: [
              TableCalendar(
                rowHeight: 40,
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  headerPadding: EdgeInsets.symmetric(vertical: 10),
                ),
                calendarStyle: CalendarStyle(
                    todayTextStyle: TextStyle(color: Colors.white),
                    selectedDecoration: BoxDecoration(
                        color: Color(0xffFFC5C5),
                        border: Border.all(color: Color(0xffffffff), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    todayDecoration: BoxDecoration(color: Colors.red)),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day, _.today),
                focusedDay: DateTime.now(),
                firstDay: DateTime(1990),
                lastDay: DateTime(2050),
                onDaySelected: _.onDaysSelected,
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                'Month',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 22,
              ),
              Image.asset(Assets.arrowDown)
            ],
          )),
    );
  }
}
