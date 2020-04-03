

import 'package:flutter/material.dart';
import 'package:disefood/screen/home_customer.dart';


//#Clt+Alt+L จัดระเบียบ
void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.orange,
      appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.white)),
    ),
    home: new Home(),
    initialRoute: '/',

  ));

}

