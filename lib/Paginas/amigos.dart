import 'dart:ui';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Widgets/widgets.dart';
import '../Widgets/FadeAnimation.dart';


class FriendsPage extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Align(
          alignment: Alignment(0,-0.2),
          child: ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: CircleAvatar(
                radius: size.width * 0.14,
                backgroundColor: Colors.grey[400].withOpacity(0.5),
                child: Align(
                  alignment: Alignment(-0.15,0),
                  child: Icon(
                    FontAwesomeIcons.users,
                    color: kWhite,
                    size: size.width * 0.1,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.44,
          left: size.width * 0.55,
          child: FadeAnimation(1,Container(
            height: size.width * 0.1,
            width: size.width * 0.1,
            decoration: BoxDecoration(
              color: kBlue,
              shape: BoxShape.circle,
              border: Border.all(color: kWhite, width:2),
            ),
            child: Icon(
              FontAwesomeIcons.plus ,
              color: kWhite,
            ),
          ),
          )
        ),

        Padding(
          padding: const EdgeInsets.only(top:450.0),
          child: Align(
            alignment: Alignment(0,0),
            child: Column(
              children: [
                Text(
                  "Adiciona amigos ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "para veres as suas estatísticas",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "e entrares em sala de chat com eles",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            )
            ),
        ),

        Positioned(
          top: size.height * 0.75,
          left: size.width * 0.10,
          child: Column(
            children: [
              FadeAnimation(1.4,RoundedButton2(buttonName: "Digitalizar código QR"),),
              SizedBox(height: 10),
              FadeAnimation(1.4,RoundedButton2(buttonName: "O meu código QR"),),
            ]
          ),
        )
      ]
    );
  }
}