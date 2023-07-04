import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Selectable Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Selectable Demo')),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            SelectableText(
              'Please copy me',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              minLines: 3,
              maxLines: 10,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Paste your text here'),
            ),
            SizedBox(
              height: 30,
            ),
            SelectableText.rich(TextSpan(
                text: 'He thrusts his fists ',
                style: TextStyle(fontSize: 20),
                children: [
                  TextSpan(
                      text: 'against the posts',
                      style: TextStyle(color: Colors.red)),
                  TextSpan(
                      text: ' and still insists he sees the ghosts.',
                      style: TextStyle(color: Colors.blue))
                ])),
          ],
        ),
      ),
    );
  }
}
