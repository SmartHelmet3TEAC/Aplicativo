import 'package:flutter/material.dart';
import 'pallete.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key, 
    @required this.buttonName,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: kBlue,
      ),
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, 'HomePage');
        }, 
        child: Text(
          buttonName,
          style: kBodyText.copyWith(fontWeight: FontWeight.bold),
        )
      ),
    );
  }
}

class RoundedButton2 extends StatelessWidget {
  const RoundedButton2({
    Key key, 
    @required this.buttonName,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: kBlue,
      ),
      child: FlatButton(
        onPressed: () {
              showDialog(context: context,
              builder: (BuildContext context){
                return AlertDialog(
                  title: Text("O meu QR code"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image(image: AssetImage("assets/images/qr.png"))
                    ],
                  ),
                  actions: [
                    FlatButton(
                      onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: Text("Fechar"),
                    )
                  ],
                );
              }
              );
        }, 
        child: Text(
          buttonName,
          style: kBodyText.copyWith(fontWeight: FontWeight.bold),
        )
      ),
    );
  }
}