import 'package:flutter/material.dart';
import 'package:flutter_app_test/home_page.dart';
import 'dart:developer';

class Animal {
  final int legs;
  final String color;

  Animal(this.legs, this.color);

  bool _canLiveWithMan = true;

  bool get canLiveWithMan {
    return _canLiveWithMan;
  }

  void sound() {
    log('woof woof');
  }
}

class Cat extends Animal {
  Cat() : super(5, 'red');

  @override
  final _canLiveWithMan = false;

  bool get canLiveWithMan {
    return _canLiveWithMan;
  }

  @override
  void sound() {
    log('meoowww meoowww');
  }
}

Cat myCat = Cat();

Animal dog = Animal(4, 'white');
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    dog.sound();
    myCat.sound();
    return MaterialApp(
      home: HomePage(),
    );
  }
}
