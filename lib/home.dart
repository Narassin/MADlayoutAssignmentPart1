import 'package:flutter/material.dart';
import 'griddb.dart';
import 'package:flutter_grid_button/flutter_grid_button.dart';

//tab row widget to hold the tabs
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
      color: const Color.fromARGB(255, 119, 119, 119),
    );
  }
}

//the gridbox container as a stateless widget
class GridBox extends StatelessWidget {
  const GridBox();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 2.0,
            children: List.generate(6, (index) {
              return GridItem(key: key, index: index);
            })));
  }
}

class GridItem extends StatefulWidget {
  const GridItem({Key? key, required this.index}) : super(key: key);
  final int index;

//function for when button is pressed
  void switchChanger(index) {
    iotDB[index]['state'] as bool
        ? iotDB[index]['state'] = true
        : iotDB[index]['state'] = false;
  }

  @override
  State<GridItem> createState() => _GridItem();
}

class _GridItem extends State<GridItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: ElevatedButton(
            onPressed: null,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(iotDB[widget.index]['icon'] as IconData, size: 40),
                Text(iotDB[widget.index]['deviceName'] as String),
                Icon(iotDB[widget.index]['status'] as bool
                    ? Icons.toggle_off
                    : Icons.toggle_on)
              ],
            )));
  }
}
