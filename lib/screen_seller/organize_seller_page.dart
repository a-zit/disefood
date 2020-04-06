import 'package:disefood/component/sidemenu_seller.dart';
import 'package:flutter/material.dart';


class OrganizeSellerPage extends StatefulWidget {
  OrganizeSellerPage({Key key}) : super(key : key);
  @override
  _OrganizeSellerPageState createState() => _OrganizeSellerPageState();
}

class _OrganizeSellerPageState extends State<OrganizeSellerPage> {
  List<String> items = List<String>.generate(7, (index) {
    return "Item + $index";
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.only(left: 0,top: 0,right: 170),
            child : Center(
              child: Text(
                "Organize",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
              ),
            ),
          ),
        ],
      ),
      drawer: SideMenuSeller(),
      

    );
  }
}




