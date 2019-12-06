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