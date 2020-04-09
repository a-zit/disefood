import 'package:disefood/component/sidemenu_customer.dart';
import 'package:flutter/material.dart';

class PromptpayPage extends StatefulWidget {
  @override
  _PromptpayPageState createState() => _PromptpayPageState();
}

class _PromptpayPageState extends State<PromptpayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.favorite),
              onPressed: () => debugPrint('Favorite')),
          new IconButton(
              icon: Icon(Icons.archive),
              onPressed: () => debugPrint("archieve")),
        ],
      ),
      drawer: SideMenuCustomer(),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              padding: EdgeInsets.fromLTRB(40, 30, 40, 0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 150,
                      margin: EdgeInsets.only(top: 30),
                      child: Image.network(
                          "https://www.thaiload.com/wp-content/uploads/2018/01/image.jpeg"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("ร้าน 000001"),
                        Text(" # 999999 Baht"),
                      ],
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.only(top: 10),
                      child: Image.network(
                          "https://boofcv.org/images/thumb/3/35/Example_rendered_qrcode.png/400px-Example_rendered_qrcode.png"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 200,
              child: FlatButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.file_download,color: Colors.orange,),
                    Text(" Download QRcode",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.orange,width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
