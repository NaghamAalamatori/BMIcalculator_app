import 'package:flutter/material.dart';

class HightWidget extends StatefulWidget {
  const HightWidget.HeightWidget({super.key, required this.onChanged});

  final Function(double) onChanged;

  @override
  State<HightWidget> createState() => _HightWidgetState();
}

class _HightWidgetState extends State<HightWidget> {
  late double slider;

  @override
  void initState() {
    slider = 150;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xff9E9FA5FF),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Height",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("${slider.toInt()}"),
          Slider(
            value: slider,
            min: 140,
            max: 200,
            onChanged: (v) {
              setState(
                () {
                  slider = v;
                },
              );
              widget.onChanged(slider);
            },
          ),
        ],
      ),
    );
  }
}
