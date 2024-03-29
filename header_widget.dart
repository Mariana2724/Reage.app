
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  final double _height;
  final bool showIcon;
  final IconData _icon;

  const HeaderWidget(this._height, this.showIcon, this._icon, {Key? key}) : super(key: key);
  
  @override
  _HeaderWidgetState createState() => _HeaderWidgetState(_height, showIcon, _icon);

}

class _HeaderWidgetState extends State<HeaderWidget> {
  double _height;
  bool _showIcon;
  IconData _icon;

  _HeaderWidgetState(this._height, this._showIcon, this._icon,);
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    
    return Container(
     child: Stack(
         children: [
          ClipPath(
            child: Container(
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                  colors: [
                   Theme.of(context).primaryColor.withOpacity(0.4),
                  Theme.of(context).accentColor.withOpacity(0.4),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp
                ),
             ),
          ),
          clipper: new ShapeClipper(
            [
              Offset(width / 5, _height),
              Offset(width / 10 * 5, _height - 60),
              Offset(width / 5 * 4, _height + 20),
              Offset(width, _height - 18)
            ]
        ),
      ),
      ClipPath(
        child: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
              colors: [
              Theme.of(context).primaryColor.withOpacity(0.4),
              Theme.of(context).accentColor.withOpacity(0.4),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp
            ),
          ),
        ),
        clipper: new ShapeClipper(
            [
            Offset(width / 4, _height + 20),
            Offset(width / 8 * 8, _height - 60),
            Offset(width / 5 * 4, _height - 60),
            Offset(width, _height - 20)
            ]
          ),
        ),
        ClipPath(
          child: Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).accentColor,
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp
              ),
            ),
          ),
          clipper: new ShapeClipper(
              [
              Offset(width / 5, _height),
              Offset(width / 2, _height - 40),
              Offset(width / 5 * 4, _height - 80),
              Offset(width, _height - 20)
              ]
          ),
     ),

          Visibility(
            visible: _showIcon,
            child: Container(
              height: _height - 0,
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(
                    left: 5.0,
                    top: 20.0,
                    right: 5.0,
                    bottom: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                    border: Border.all(width: 4, color: Colors.black),
                  ),
                  child: Icon(
                    _icon,
                    color: Colors.black,
                    size:30.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ShapeClipper extends CustomClipper<Path> {
  List<Offset> _offsets = [];
  ShapeClipper(this._offsets);
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height-20);

    path.quadraticBezierTo(_offsets[0].dx, _offsets[0].dy, _offsets[1].dx,_offsets[1].dy);
    path.quadraticBezierTo(_offsets[2].dx, _offsets[2].dy, _offsets[3].dx,_offsets[3].dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

}

