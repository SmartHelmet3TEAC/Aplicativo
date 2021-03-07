import 'package:flutter/material.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class NotifyPage extends StatelessWidget with NavigationStates{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey[800],

    body: SingleChildScrollView(
      child: Container(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:80.0, left:50.0),
              child: Column(
                children: <Widget>[
                  
                  Text(   // title
                    "Notificações",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  Text(   // title
                    "Notificações",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}


