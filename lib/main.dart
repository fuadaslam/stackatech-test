import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Future updateUserDetails() async {
    final uri =
        "http://ec2-13-232-100-21.ap-south-1.compute.amazonaws.com:3000/user";
    var map = new Map<String, dynamic>();

  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("KITCHEN COLLECTION"),
          actions: <Widget>[
        IconButton(
        icon: Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
      ),
  ],
          backgroundColor: Color(0xFF040926),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Color(0xFFD3D3D3),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 50.0,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.sort,
                                size: 30.0,
                              ),
                              Text(
                                "Sort",
                                style:
                                    Theme.of(context).textTheme.button.copyWith(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                        ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 50.0,
                        ),
                        Container(
                            height: 40,
                            child: VerticalDivider(color: Colors.black)),
                        SizedBox(
                          width: 50.0,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.filter_list,
                                size: 30.0,
                              ),
                              Text(
                                "Filter",
                                style:
                                    Theme.of(context).textTheme.button.copyWith(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                        ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(20, (index) {
                      return Container(
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'images/phone.png',
                                fit: BoxFit.cover,
                                height: 100.0,
                              ),
                              Text("SPARCO NEW MODEL"),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    width: 40.0,
                                  ),
                                  Text("₹2809",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14.0)),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    "₹2809",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14.0),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "5% Discount",
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(10),
                        ),
                      );
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
