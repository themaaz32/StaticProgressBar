import 'package:flutter/material.dart';

import 'LoaderBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: Column(
          children: <Widget>[
            SizedBox(height: 100,),

            Text("Simple Static ProgressBars", style: TextStyle(fontSize: 30),),

            SizedBox(height: 100,),
            Container(
                width: 300,

                child: MyLoaderBar(loaderForgroundFillColor: Colors.amber, value: 10, )
            ),

            SizedBox(height: 16,),
            Container(
                width: 300,

                child: MyLoaderBar(loaderForgroundFillColor: Colors.redAccent, value: 30,loaderBackgroundFillColor: Colors.red[100],)
            ),

            SizedBox(height: 16,),
            Container(
                width: 300,

                child: MyLoaderBar(loaderForgroundFillColor: Colors.blue, value: 50, textColor: Colors.red,)
            ),

          ],
        ),
      )
    );
  }
}

