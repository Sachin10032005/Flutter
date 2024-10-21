import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alert Dialog Box'),
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: AlertDialogButton(),
        ),
      ),
    );
  }
}

class AlertDialogButton extends StatefulWidget {
  @override
  _AlertDialogButtonState createState() => _AlertDialogButtonState();
}

class _AlertDialogButtonState extends State<AlertDialogButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _showAlertDialog(context);
      },
      child: Text('Show Alert Dialog'),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Dialog'),
          content: Text('This is a simple alert dialog.'),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            TextButton(
              child: Text('OK'),
              onPressed: () {
                // Do something when OK is pressed
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }
}
