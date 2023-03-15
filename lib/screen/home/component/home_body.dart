import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_sheet.dart';

List<String> progressTitleList = [
  "Woring Hours",
  "Your Effciency",
  "Your Strength",
  "Your Weight"
];

List<String> progressDetailList = [
  "Working hours exceeded by 3 hours",
  "Excellent  result",
  "Your  Strength imporoved",
  "You Lost 1kgm"
];

List<String> valueTextList = ["19/40", "82%", "60%", "1/5"];
List<double> valueList = [0.4, 0.8, 0.6, 0.2];
List<String> timeList = ["10:00 AM", "11:00 AM", "12:00 AM"];

List<String> taskTitleList = [
  "Meetign With fornt-end developers",
  "Internal marketing session",
  "Solve Reported Bugs",
];

List<String> taskDetailList = [
  "Flose Real Estate Project",
  "Marketing Development",
  "Solve reported Bugs that have been reported by project manager",
];

List<String> taskTimeList = [
  "9:30 AM - 10:00 AM",
  "11:00 AM - 12:00 AM",
  "12:00 AM - 12:30 AM"
];

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 28, top: 40),
                      child: const Text(
                        "Hello, Veronica!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25, left: 28),
                      child: const Text(
                        "Your progress",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 28, top: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/profile.png",
                      fit: BoxFit.cover,
                      width: 90,
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 35),
              height: 190,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: valueList.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const CustomDialog();
                          });
                      
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: index == 0
                            ? const Color(0xfff56c61)
                            : const Color(0xffffd465),
                      ),
                      margin: EdgeInsets.only(left: index == 0 ? 28 : 15),
                      width: 130,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20, left: 15),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  height: 55,
                                  width: 55,
                                  child: CircularProgressIndicator(
                                    color: index == 0
                                        ? const Color(0xffffbdb8)
                                        : const Color(0xffa87f28),
                                    value: valueList[index],
                                    strokeWidth: 6,
                                  ),
                                ),
                                Text(
                                  valueTextList[index],
                                  style: TextStyle(
                                      fontSize: index == 0 ? 12 : 18,
                                      color: index == 0
                                          ? Colors.white
                                          : const Color(0xff7a5106),
                                      fontWeight: index == 0
                                          ? FontWeight.w400
                                          : FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 13, right: 5),
                                child: Text(
                                  progressTitleList[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: index == 0
                                          ? Colors.white
                                          : const Color(0xff7a5000),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 10, left: 13, right: 5, bottom: 10),
                                child: Text(
                                  progressDetailList[index],
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: index == 0
                                          ? Colors.white
                                          : const Color(0xff7a5000),
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50, left: 28, right: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Wednseday, March 7",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff565269),
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: const Color(0xffe1e0e7),
                    ),
                    child: const Icon(
                      Icons.calendar_today_sharp,
                      size: 20,
                      color: Color(0xff53516b),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 30, bottom: 30),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: timeList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin:
                          const EdgeInsets.only(top: 20, right: 28, left: 28),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            timeList[index],
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff373551),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: index.isOdd
                                    ? const Color(0xffe7e5f1)
                                    : const Color(0xfffee2e7),
                              ),
                              margin: const EdgeInsets.only(left: 15),
                              height: 115,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 15, left: 15),
                                    child: Text(
                                      taskTitleList[index],
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: index.isOdd
                                            ? const Color(0xff342f5d)
                                            : const Color(0xff7e3b4a),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(top: 5, left: 15),
                                    child: Text(
                                      taskDetailList[index],
                                      style: TextStyle(
                                          color: index.isOdd
                                              ? const Color(0xff342f5d)
                                              : const Color(0xff7e3b4a),
                                          fontSize: 12),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 15, left: 10),
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              child: Image.asset(
                                                index == 0
                                                    ? "assets/images/profile2.png"
                                                    : "assets/images/profile9.png",
                                                height: 25,
                                                width: 25,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 15),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                child: Image.asset(
                                                  "assets/images/profile3.png",
                                                  height: 25,
                                                  width: 25,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 30),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                child: Image.asset(
                                                  index == 0
                                                      ? "assets/images/profile4.png"
                                                      : "assets/images/profile8.png",
                                                  height: 25,
                                                  width: 25,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 45),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                child: Image.asset(
                                                  index == 0
                                                      ? "assets/images/profile5.png"
                                                      : "assets/images/profile7.png",
                                                  height: 25,
                                                  width: 25,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            right: 15, top: 15),
                                        child: Text(
                                          taskTimeList[index],
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: index.isOdd
                                                ? const Color(0xff342f5d)
                                                : const Color(0xff7e3b4a),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.only(right: 10, left: 15, bottom: 5),
          decoration: BoxDecoration(
            color: const Color(0xff2d2b4e),
            borderRadius: BorderRadius.circular(20),
          ),
          width: size.width,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.square_list_fill,
                    color: Colors.white,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.lightbulb_outline_sharp,
                    color: Color(0xff9695a8)),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.calendar,
                    color: Color(0xff9695a8)),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.chat_bubble_2,
                    color: Color(0xff9695a8)),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings, color: Color(0xff9695a8)),
                ),
              ),
            ],
          ),
        ),
        //  Container(
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(20),
        //     color: Colors.white,
        //   ),
        //   margin: const EdgeInsets.only(right: 20, left: 20, bottom: 25),
        //   alignment: Alignment.bottomCenter,
        //   height: size.height * .7,
        //   width: size.width,
        // )
      ],
    );
  }
}
