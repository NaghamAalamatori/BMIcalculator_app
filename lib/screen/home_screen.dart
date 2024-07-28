import 'package:bim_calculater/screen/second_screen.dart';
import 'package:bim_calculater/widgets/change_widget.dart';
import 'package:bim_calculater/widgets/gendre_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/height_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double tempHeight = 0;
    int tempWeight = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI calculator",
          style: TextStyle(color: Color(0xff445069)),
        ),
        backgroundColor: Color(0xffE3D3E4),
      ),
      backgroundColor: Color(0xffE3D3E4),
      body: Column(
        children: [
          Expanded(child: GendreWidget()),
          Expanded(child: HightWidget.HeightWidget(
            onChanged: (h) {
              tempHeight = h / 100;
            },
          )),
          Expanded(
              child: Row(
            children: [
              ChangeWidget(
                widgetName: "Age",
                counter: 15,
                onChanged: (age) {},
              ),
              ChangeWidget(
                widgetName: "Weight",
                counter: 45,
                onChanged: (weight) {
                  tempWeight = weight;
                },
              ),
            ],
          )),
          TextButton(
              onPressed: () {
                double bmi = tempWeight / (tempHeight * tempHeight);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondScreen(
                    bmiResult: bmi,
                  );
                }));
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,
                color: Color(0xff445069),
                child: Text("Calculate", style: TextStyle(fontSize: 20)),
              ))
        ],
      ),
    );
  }
}
