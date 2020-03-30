
import 'package:flutter/material.dart';
import 'package:disefood/component/sidemenu_seller.dart';

class OrderSeller extends StatefulWidget {
  static const routeName = '/screen/order_seller';
  @override
  _OrderSellerState createState() => _OrderSellerState();
}

class _OrderSellerState extends State<OrderSeller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
        ],
      ),
      drawer: SideMenuSeller(),
    );
  }
}

