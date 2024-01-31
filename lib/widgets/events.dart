import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  const Events({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            // Card(
            //   child: Column(
            //     children: [
            //       SizedBox(
            //         height: 20,
            //       ),
            //       Text(
            //         'Wellness Workout',
            //         style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            //       ),
            //       SizedBox(
            //         height: 5,
            //       ),
            //       Text(
            //         '7:00am - 7:30am',
            //         style: TextStyle(
            //             fontWeight: FontWeight.w400,
            //             color: Color(0xffC74444),
            //             fontSize: 16),
            //       ),
            //       SizedBox(
            //         height: 10,
            //       ),
            //       Text(
            //         'Host',
            //         style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            //       ),
            //       Image.asset(Assets.dp),
            //       CircleAvatar(
            //         // backgroundImage: AssetImage('assets/images/cat3.png'),
            //         radius: 220,
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
