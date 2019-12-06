# StaticLoader
 
###### It's just a static Strength bar to show the strength of person ability like, you have to say, if someone completed 70% of the project succesfully that has been assigned to him. ######

#### Code Demonstration

###### Loader
```
MyLoaderBar(
              loaderForgroundFillColor: Colors.redAccent, 
              value: 30,
              loaderBackgroundFillColor: Colors.red[100],
              textColor: Colors.red,
            )
```

###### Example of Usage
``` 
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
```

###### MyLoaderBar Class

```
import 'package:flutter/material.dart';

class MyLoaderBar extends StatefulWidget {
  final loaderForgroundFillColor;
  final value;
  final textColor;
  final loaderBackgroundFillColor;

  MyLoaderBar({@required this.loaderForgroundFillColor, @required this.value,this.loaderBackgroundFillColor = const Color.fromRGBO(240, 240, 240, 1), this.textColor = Colors.black,});

  @override
  _MyLoaderBarState createState() => _MyLoaderBarState();
}

class _MyLoaderBarState extends State<MyLoaderBar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrainst){
        return Row(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: constrainst.maxWidth-40,
                    height: 10,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: widget.loaderBackgroundFillColor,
                        boxShadow: [BoxShadow(
                            color: Colors.grey[200], blurRadius: 0.3, spreadRadius: 0.3
                        )]
                    ),
                  ),
                  Container(
                    width: constrainst.maxWidth*(widget.value/100) > 40 ? constrainst.maxWidth*(widget.value/100)-40 : constrainst.maxWidth*(widget.value/100),
                    height: 10,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: widget.loaderForgroundFillColor,
                        boxShadow: [BoxShadow(
                            color: widget.loaderForgroundFillColor, blurRadius: 0.5, spreadRadius: 0.3
                        )]
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16,),
            Container(width: 40, child: Text("${widget.value}%", style: TextStyle(color: widget.textColor, fontWeight: FontWeight.w500), ),)
          ],
        );
      },
    );
  }
}
```


