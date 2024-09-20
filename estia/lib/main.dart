import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'esti@',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black, // Primary color for the app bar
        scaffoldBackgroundColor: Colors.black, // Background color for the entire app
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey[900], // Darker color for button
            foregroundColor: Colors.white, // Text color on the button
          ),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white), // Text color for body text
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('esti@'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to esti@',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20), // Spacing between widgets
            ElevatedButton(
              onPressed: () {
                print('Button Pressed: Hello from esti@');
              },
              child: const Text('Click Me'),
            ),
            const SizedBox(height: 20), // Spacing between widgets
            Image.network(
              'https://xclcamps.com/wp-content/uploads/coding-difference-1.jpg',
              width: 5000,
              height: 500,
            ),
          ],
        ),
      ),
    );
  }
}