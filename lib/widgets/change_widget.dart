import 'package:flutter/material.dart';

class ChangeWidget extends StatefulWidget {
  const ChangeWidget(
      {super.key,
      required this.widgetName,
      required this.counter,
      required this.onChanged});

  final String widgetName;
  final int counter;
  final Function(int) onChanged;

  @override
  State<ChangeWidget> createState() => _ChangeWidgetState();
}

class _ChangeWidgetState extends State<ChangeWidget> {
  late int widgetCounter;

  @override
  void initState() {
    widgetCounter = widget.counter;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xff9E9FA5FF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.widgetName,
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text("$widgetCounter"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        widgetCounter++;
                      });
                      widget.onChanged(widgetCounter);
                    },
                    icon: Icon(Icons.add)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        widgetCounter--;
                      });
                      widget.onChanged(widgetCounter);
                    },
                    icon: Icon(Icons.minimize)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
