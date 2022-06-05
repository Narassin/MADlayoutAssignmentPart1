import 'package:flutter/material.dart';

class TabBox extends StatelessWidget {
  TabBox();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('All',
              style: TextStyle(
                fontSize: 21,
                color: Colors.white,
              )),
          IconButton(
              onPressed: null,
              icon: Icon(Icons.more_horiz),
              tooltip: 'More Option'),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      margin: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20),
      color: Color.fromARGB(255, 119, 119, 119),
    );
  }
}
