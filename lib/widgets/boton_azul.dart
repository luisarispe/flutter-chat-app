import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String textoBtn;
  final Function onPressed;

  const BotonAzul({Key key, @required this.textoBtn, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        elevation: 2,
        hoverElevation: 5,
        color: Colors.blue,
        shape: StadiumBorder(),
        child: Container(
          width: double.infinity,
          height: 50,
          child: Center(
            child: Text(
              textoBtn,
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ),
        onPressed: this.onPressed);
  }
}
