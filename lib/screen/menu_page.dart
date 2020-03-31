import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.favorite),
              onPressed: () => debugPrint('favorite')),
          new IconButton(
              icon: Icon(Icons.archive),
              onPressed: () => debugPrint("archive")),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Image.network(
              "https://momofuku-assets.s3.amazonaws.com/uploads/sites/27/2018/08/2-2-1440x590.jpg",
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              padding: EdgeInsets.only(left: 45),
              child: Row(
                children: <Widget>[
                  Text(
                    "01",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                      height: 65,
                      child: VerticalDivider(
                        color: Colors.orange,
                        thickness: 3,
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "ร้านก๋วยเตี๋ยว",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("อาหารเส้น"),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.orangeAccent,
                            size: 20,
                          ),
                          Text("4.9"),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              thickness: 15,
              color: Colors.grey[300],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(45, 20, 45, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "รายการอาหาร",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 55),
                      Text(
                        "ราคา",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("Noodle 1"),
                      SizedBox(width: 130),
                      Text("45"),
                      SizedBox(width: 15),
                      IconButton(
                        icon: new Icon(
                          Icons.add_circle,
                          color: Colors.orange,
                        ),
                        onPressed: () {
                          showGeneralDialog(
                            barrierDismissible: false,
                            barrierColor: Colors.black45,
                            transitionDuration:
                            const Duration(milliseconds: 200),
                            context: context,
                            pageBuilder: (BuildContext context,
                                Animation animation,
                                Animation secondAnimation) {
                              return GestureDetector(
                                onTap: () {
                                  FocusScopeNode currentFocus =
                                  FocusScope.of(context);

                                  if (!currentFocus.hasPrimaryFocus) {
                                    currentFocus.unfocus();
                                  }
                                },
                                child: Material(
                                  type: MaterialType.transparency,
                                  child: Center(
                                    child: Container(
                                      width: 350,
                                      height: 500,
                                      margin: EdgeInsets.only(bottom: 100),
                                      color: Colors.white,
                                      child: Column(
                                        children: <Widget>[
                                          Stack(
                                            children: <Widget>[
                                              Card(
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 150,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: <Widget>[
                                                          Container(),
                                                          IconButton(
                                                            icon: new Icon(
                                                                Icons.close),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                  context)
                                                                  .pop();
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: NetworkImage(
                                                        "https://www.seriouseats.com/2020/01/20200122-kal-guksu-anchovy-noodle-soup-vicky-wasik-5-1500x1125.jpg",
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.fromLTRB(
                                                20, 20, 0, 10),
                                            child: Text(
                                              "Noodle 1",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                          Divider(
                                            color: Colors.grey[300],
                                            thickness: 5,
                                          ),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.fromLTRB(
                                                20, 10, 0, 10),
                                            child: Text("Additional Request"),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                20, 0, 20, 0),
                                            width: 350,
                                            child: TextField(
                                              style: new TextStyle(
                                                fontSize: 15,
                                              ),
                                              maxLines: 2,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText:
                                                  'ใส่ข้อมูลระบุ เช่น เผ็ดน้อย เป็นต้น'),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                125, 20, 0, 0),
                                            child: Row(
                                              children: <Widget>[
                                                IconButton(
                                                    icon: Icon(Icons.remove),
                                                    onPressed: minus),
                                                new Text('$_n',
                                                    style: new TextStyle(
                                                        fontSize: 20.0)),
                                                IconButton(
                                                    icon: Icon(Icons.add),
                                                    onPressed: add),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      IconButton(
                          icon: new Icon(
                            Icons.favorite,
                            color: Colors.orange,
                          ),
                          onPressed: () => debugPrint('Mark as Favorite')),
                    ],
                  ),
                  Divider(
                    endIndent: 15,
                    height: 0,
                    color: Colors.grey,
                    thickness: 1.5,
                  ),
                  Row(
                    children: <Widget>[
                      Text("Noodle 1"),
                      SizedBox(width: 130),
                      Text("45"),
                      SizedBox(width: 15),
                      IconButton(
                          icon: new Icon(
                            Icons.add_circle,
                            color: Colors.orange,
                          ),
                          onPressed: () => debugPrint('Add')),
                      IconButton(
                          icon: new Icon(
                            Icons.favorite,
                            color: Colors.orange,
                          ),
                          onPressed: () => debugPrint('Mark as Favorite')),
                    ],
                  ),
                  Divider(
                    endIndent: 15,
                    height: 0,
                    color: Colors.grey,
                    thickness: 1.5,
                  ),
                  Row(
                    children: <Widget>[
                      Text("Noodle 1"),
                      SizedBox(width: 130),
                      Text("45"),
                      SizedBox(width: 15),
                      IconButton(
                          icon: new Icon(
                            Icons.add_circle,
                            color: Colors.orange,
                          ),
                          onPressed: () => debugPrint('Add')),
                      IconButton(
                          icon: new Icon(
                            Icons.favorite,
                            color: Colors.orange,
                          ),
                          onPressed: () => debugPrint('Mark as Favorite')),
                    ],
                  ),
                  Divider(
                    endIndent: 15,
                    height: 0,
                    color: Colors.grey,
                    thickness: 1.5,
                  ),
                  Container(
                    margin: EdgeInsets.all(30),
                    child: IntrinsicWidth(
                      //ทำให้ปุ่มกว้างเท่ากันไม่ได้
                      child: Row(
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () => debugPrint('Back'),
                            child: Text(
                              "Back",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            ),
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          RaisedButton(
                            onPressed: () => debugPrint('View Order'),
                            child: Text(
                              "View Order",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  int _n = 0;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }
}
