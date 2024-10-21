import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Push named route
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(data: 'Hello from Home!'),
                  ),
                );
              },
              child: const Text('Go to Second Page'),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Push named route
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdPage(),
                  ),
                );
              },
              child: const Text('Go to Third Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String data;
  const SecondPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Received data: $data'),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Pop current route to go back
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is the third page'),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Pop current route to go back
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Pop until first route (home)
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Go Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
