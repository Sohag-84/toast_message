import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToastPage(),
    );
  }
}

class ToastPage extends StatefulWidget {
  const ToastPage({Key? key}) : super(key: key);

  @override
  _ToastPageState createState() => _ToastPageState();
}

class _ToastPageState extends State<ToastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: const Text("Click Here"),
          onPressed: () {
            showToast();
          },
        ),
      ),
    );
  }

  void showToast() {
    Fluttertoast.showToast(
        msg: "This is a toast message",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.teal,
        textColor: Colors.orange,
        fontSize: 25);
  }
}
