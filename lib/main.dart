

import 'package:flutter/material.dart';
import 'package:disefood/screen/home_customer.dart';
import 'package:disefood/component/sidemenu_seller.dart';
import 'package:disefood/screen/home_seller.dart';


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

