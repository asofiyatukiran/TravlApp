import 'package:flutter/material.dart';

const PRIMARY = "primary";
const WHITE = "white";

const Map<String, Color> myColors = {
  PRIMARY: Color.fromRGBO(0, 180, 216, 1),
  WHITE: Colors.white,
};

class Planner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
      backgroundColor: myColors[WHITE],
      body: _Body(),

    );
  }
}

Widget _myAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(40),
    child: AppBar(
      backgroundColor: myColors[WHITE],
      elevation: 0,

      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 15),

        ),
      ],
    ),
  );
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: myColors[PRIMARY],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
          ),
        ),
      ],
    );
  }
}