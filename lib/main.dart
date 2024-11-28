import 'package:flutter/material.dart';
import 'package:animations/animations.dart'; 

void main() => runApp(MyEphemeralApp());

class MyEphemeralApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Ephemeral State with Animations')),
        body: CounterWidget(),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0; // Local state to hold the counter value

  // Function to increment the counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Function to decrement the counter
  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Use FadeScaleTransition from the animations package for animated counter
          FadeScaleTransition(
            animation: AlwaysStoppedAnimation(1.0), // Static animation, but we can use controller for dynamic changes
            child: Text(
              'Counter Value: $_counter',
              style: TextStyle(fontSize: 24),
            ),
          ),
          SizedBox(height: 20),
          // Hoverable Increment Button with animation (FadeScaleTransition)
          MouseRegion(
            onEnter: (_) {
              setState(() {
                // Handle hover effect
              });
            },
            onExit: (_) {
              setState(() {
                // Handle exit effect
              });
            },
            child: FadeScaleTransition(
              animation: AlwaysStoppedAnimation(1.0),
              child: ElevatedButton(
                onPressed: _incrementCounter,
                child: Text('Increment'),
              ),
            ),
          ),
          SizedBox(height: 20),
          // Hoverable Decrement Button with animation (FadeScaleTransition)
          MouseRegion(
            onEnter: (_) {
              setState(() {
                // Handle hover effect
              });
            },
            onExit: (_) {
              setState(() {
                // Handle exit effect
              });
            },
            child: FadeScaleTransition(
              animation: AlwaysStoppedAnimation(1.0),
              child: ElevatedButton(
                onPressed: _decrementCounter,
                child: Text('Decrement'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
