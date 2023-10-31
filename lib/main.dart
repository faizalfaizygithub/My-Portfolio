import 'package:flutter/material.dart';
import 'package:portfolio/myapp.dart';

import 'myData.dart';

void main() {
  runApp(MyApp());
  MyDeatails fzy = MyDeatails(
      name: 'Muhammed Faisal v',
      email: 'faizalfaizy648@gmail.com',
      phone: '+91 9847959648',
      webadddress: 'Mywork.co.in/faisal');

  fzy.printMyDeatails();
}

class MyDeatails {
  String name;
  String email;
  var phone;
  String webadddress;
  MyDeatails({
    required this.name,
    required this.email,
    this.phone,
    required this.webadddress,
  });
  void printMyDeatails() {
    print('Name: ' + this.name);
    print('Email:' + this.email);
    print('Phone: ' + this.phone.toString());
    print('Web Address:' + this.webadddress);
  }
}
