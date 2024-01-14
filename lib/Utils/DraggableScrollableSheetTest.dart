import 'package:flutter/material.dart';

class DraggableScrollableSheetTest extends StatefulWidget {
  const DraggableScrollableSheetTest({super.key});

  @override
  State<DraggableScrollableSheetTest> createState() => _DraggableScrollableSheetTestState();
}

class _DraggableScrollableSheetTestState extends State<DraggableScrollableSheetTest> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        body: SizedBox.expand(
          child: DraggableScrollableSheet(
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                color: Colors.blue[100],
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text('Item $index'));
                  },
                ),
              );
            },
            initialChildSize: 0.7,
            minChildSize: 0.7,
            maxChildSize: 0.8,
          ),
        ),
      ),
    );
  }
}
