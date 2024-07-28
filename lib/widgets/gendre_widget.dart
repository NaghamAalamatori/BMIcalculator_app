import 'package:flutter/material.dart';

class GendreWidget extends StatefulWidget {
  const GendreWidget({super.key});

  @override
  State<GendreWidget> createState() => _GendreWidgetState();
}

class _GendreWidgetState extends State<GendreWidget> {
  late Color boxColor1;
  late Color boxColor2;

  @override
  void initState() {
    boxColor1 = Color(0xff9E9FA5FF);
    boxColor2 = Color(0xff9E9FA5FF);

    super.initState();
  }

  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                boxColor1 = Color(0xffA4508B);;
                boxColor2 = Color(0xff9E9FA5FF);
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              decoration: BoxDecoration(
                color: boxColor1,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.female),
                  Text("Female",style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                boxColor2 = Color(0xff325285);
                boxColor1 = Color(0xff9E9FA5FF);
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              decoration: BoxDecoration(
                color: boxColor2,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.male),
                  Text("Male",style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
