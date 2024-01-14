
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestWidgets extends StatefulWidget {
  const TestWidgets({super.key});

  @override
  State<TestWidgets> createState() => _TestWidgetsState();
}

class _TestWidgetsState extends State<TestWidgets> {
  // examples https://www.youtube.com/watch?v=G1LGOH424lo
  bool _stateCheckListTitle = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 40.0,),
                  createRichText(),
                  const SizedBox(height: 20.0,),
                  createFittedBox(),
                  const SizedBox(height: 20.0,),
                  createMaterialBanner(),
                  const SizedBox(height: 20.0,),
                  createCheckBoxListTitle(),
                  const SizedBox(height: 20.0,),
                  createCupertinoContextMenuAction(),
                  const SizedBox(height: 20.0,),
                  CupertinoButton(
                    child: const Text(
                      'DraggableScrollableSheetTest'
                    ),
                    onPressed: () => Navigator.pushNamed(context, 'DraggableScrollableSheetTest'),
                  ),
                  const SizedBox(height: 20.0,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  Widget createRichText(){
    return RichText(
      text: const TextSpan(
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.0
        ),
        children: [
          TextSpan(
            text: "This is an example of the "
          ),
          TextSpan(
            text: "RichText",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold
            )
          ),
          TextSpan(
            text: " Widget from "
          ),
          TextSpan(
            text: "Flutter",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold
            )
          ),
        ]
      ),
    );
  }

  Widget createFittedBox(){
    return Container(
      color: Colors.blue,
      height: 300,
      width: 300,
      child: const FittedBox(
        child: Center(
          child: Text(
            'FittedBox',
            style: TextStyle(
              color: Colors.white,
              //fontSize: 20
            ),
          ),
        ),
      ),
    );
  }

  createMaterialBanner(){
    return Center(
      child: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showMaterialBanner(
            MaterialBanner(
              padding: const EdgeInsets.all(20),
              content: const Text('Suscribe!'),
              elevation: 5,
              actions: [
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                  },
                  child: const Text(
                    'Dismiss'
                  ),
                ),
              ],
            )
          );
        },
        child: const Text(
          'Open'
        ),
      ),
    );
  }

  createCheckBoxListTitle(){

    return CheckboxListTile(
      value: _stateCheckListTitle,
      onChanged: (bool? value) {
        setState(() {
          _stateCheckListTitle = !_stateCheckListTitle;
        });
      },
      checkColor: Colors.teal,
      activeColor: Colors.indigo,
      title: const Text('Checkbox list title'),
      subtitle: const Text('This is a sub title'),
      controlAffinity: ListTileControlAffinity.leading,
      tristate: true,
    );
  }

  createCupertinoContextMenuAction(){
    return Center(
      child: CupertinoContextMenu(
        actions: [
          CupertinoContextMenuAction(
            onPressed: () {
              Navigator.pop(context);
            },
            trailingIcon: Icons.ac_unit_rounded,
            child: const Text(
              'Option 1'
            ),
          ),
          CupertinoContextMenuAction(
            trailingIcon: Icons.add_alert_sharp,
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
                'Option 2'
            ),
          ),
        ],
        child: const Icon(
          Icons.add,
          size: 70.0,
        ),
      ),
    );
  }


}
