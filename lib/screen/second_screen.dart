import 'package:bim_calculater/screen/home_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.bmiResult});

  final double bmiResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE3D3E4),
      appBar: AppBar(
        title: Text("Your Resualt", style: TextStyle(color: Color(0xff445069))),
        backgroundColor: Color(0xffE3D3E4),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff9E9FA5FF)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    bmiResult >= 18.5 && bmiResult < 25 ? "Normal" : "InNormal",
                    style: TextStyle(
                        color: bmiResult >= 18.5 && bmiResult < 25
                            ? Colors.green
                            : Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Text(
                    "${bmiResult.toStringAsFixed(2)}",
                    style: TextStyle(fontSize: 60),
                  ),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            },
            child: Container(
              color: Color(0xff445069),
              padding: EdgeInsets.all(20),
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "Recalculate",
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
