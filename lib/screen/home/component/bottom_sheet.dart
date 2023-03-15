import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key}) : super(key: key);

  dialogContent(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // To make the card compact
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 20, right: 20),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: const Color(0xffe1e0e7),
                  ),
                  child: const Icon(
                    Icons.close,
                    size: 20,
                    color: Color(0xff53516b),
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Image.asset(
              "assets/images/food.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              right: 50,
              left: 50,
            ),
            child: Text(
              textAlign: TextAlign.center,
              "Oh, you need some rest!",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Color(0xff2d285b),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              children: const [
                Text(
                  "Coffee  mechin can make",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff7d7c98),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "a cappuccino especialy for you in",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff7d7c98),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "5 minutes. Do you want some coffee?",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff7d7c98),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 100),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 2.5,
                        color: const Color(0xff565376),
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      child: const Text(
                        "No, later",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff565376),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.only(left: 20, bottom: 25, right: 20),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 1),
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffffd465),
                    ),
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.all(17),
                        child: const Text(
                          "Yes, thanks!",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff7b5207),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.bottomCenter,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}
