import 'package:flutter/material.dart';

class TextUtils extends StatefulWidget {
  const TextUtils({super.key});

  @override
  State<TextUtils> createState() => _TextUtilsState();
}

class _TextUtilsState extends State<TextUtils> {
  final myController = TextEditingController();
  int noOfChar = 0;
  int words = 0;

  @override
  void initState() {
    super.initState();

    myController.addListener(_printValue);
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void _printValue() {
    setState(() {
      noOfChar = myController.text.characters.length;
      words =
          myController.text.split(' ').where((word) => word.length != 0).length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Utils"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter the text here"),
            ),
            Text('No of characters in text :- $noOfChar'),
            Text('No of words in text :- $words'),
            ElevatedButton(
                onPressed: () {
                  myController.text = myController.text.toUpperCase();
                },
                child: Text("Convert to Uppercase")),
            ElevatedButton(
                onPressed: () {
                  myController.text = myController.text.toLowerCase();
                },
                child: Text("Convert to Lowercase")),
            ElevatedButton(
                onPressed: () {
                  myController.text = '';
                },
                child: Text("Clear the text")),
          ],
        ),
      ),
    );
  }
}
