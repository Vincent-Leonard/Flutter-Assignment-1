import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color favcolor = Colors.white;

  @override
  void initState() {
    super.initState();
    favcolor = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Japan"),
        ),
        body: Stack(children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromRGBO(204, 229, 255, 100),
            child: Column(children: <Widget>[
              Flexible(
                  flex: 2,
                  child: Container(
                    child: Image(
                      image: NetworkImage(
                          "https://s30876.pcdn.co/wp-content/uploads/Japan-1170x630.jpg"),
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                  )),
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: NetworkImage(
                                    "https://www.theinvisibletourist.com/wp-content/uploads/2018/09/featured_79.jpg"))),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: NetworkImage(
                                    "https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/02/a0002533/img/basic/a0002533_main.jpg?20210122155600&q=80&rw=750&rh=536"))),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: NetworkImage(
                                    "https://www.punipunijapan.com/wp-content/uploads/2012/12/snowy-bridge.jpg"))),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: NetworkImage(
                                    "https://cdn.wallpapersafari.com/82/70/boQfY8.jpg"))),
                      )),
                    ],
                  )),
              Flexible(
                  flex: 4,
                  child: Column(
                    children: [
                      Flexible(
                          flex: 1,
                          child: Container(
                            child: Text(
                              "Welcom to Japan",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          )),
                      Flexible(
                          flex: 10,
                          child: ListView(
                            padding: EdgeInsets.only(
                                top: 12.00, left: 16.00, right: 16.00),
                            children: [
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ))
                    ],
                  ))
            ]),
          ),
        ]),
        floatingActionButton: Container(
          margin: EdgeInsets.only(top: 80, right: 0),
          child: FloatingActionButton(
            backgroundColor: Colors.grey,
            onPressed: () {
              setState(() {
                if (favcolor == Colors.white) {
                  favcolor = Colors.red;
                } else if (favcolor == Colors.red) {
                  favcolor = Colors.white;
                }
              });
            },
            child: Icon(
              Icons.favorite,
              color: favcolor,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop);
  }
}
