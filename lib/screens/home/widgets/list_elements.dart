import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListElements extends StatelessWidget {
  final List<String> _list;
  final String _title;

  ListElements(
    this._list,
    this._title,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          this._title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Ingredientes
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: buildList(
              this._list,
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> buildList(List<String> list) {
    List<Widget> listOfWidgets = [];
    list.forEach((String element) {
      listOfWidgets.add(
        Text(
          element,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      );
    });
    return listOfWidgets;
  }
}
