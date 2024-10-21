import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProgressExample(),
    );
  }
}

class ProgressExample extends StatefulWidget {
  @override
  _ProgressExampleState createState() => _ProgressExampleState();
}

class _ProgressExampleState extends State<ProgressExample> {
  double _progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    _updateProgress();
  }

  void _updateProgress() {
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _progressValue += 0.1;
        if (_progressValue > 1.0) {
          _progressValue = 0.0;
        }
        _updateProgress();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Determinate Circular Progress"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: CircularProgressIndicator(
          value: _progressValue,
          backgroundColor: Colors.grey[200],
          color: Colors.blue,
          strokeWidth: 6.0,
        ),
      ),
    );
  }
}
