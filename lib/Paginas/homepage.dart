import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import '../Widgets/widgets.dart';
import '../Widgets/FadeAnimation.dart';



void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage()
  )
);

class HomePage extends StatefulWidget with NavigationStates {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      
      body:SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            ClipPath(
              child: Container(
                height: 340.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/homepage.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.05,
                    left: size.width * 0.07,
                    right: size.width * 0.07,

                  ),
                  // height: 1000,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),

                    )
                  ),
                  child: Column(               
                    children: <Widget>[
                      
                      FadeAnimation(1,Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              CustomPaint(
                                foregroundPainter: CircleProgress(80),
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Center(
                                    child: Icon(
                                      Icons.sports_motorsports,
                                      size: 33,
                                      ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "80%",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CustomPaint(
                                foregroundPainter: CircleProgress(20),
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Center(
                                    child: Icon(
                                      Icons.gamepad,
                                      size: 33,
                                      ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "20%",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CustomPaint(
                                foregroundPainter: CircleProgress(0),
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),),
                      
                      SizedBox(height: 40),
                      
                      FadeAnimation(1.4,SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children:<Widget>[
                            
                            Container(  // GPS
                              width: 300,
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/gps.jpeg'),
                                  fit: BoxFit.cover
                                )
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    colors: [
                                      Colors.black.withOpacity(.3),
                                      Colors.black.withOpacity(.1),
                                    ]
                                  )
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text("3:56:45  ", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                                    Text("71,24 Km  ", style: TextStyle(color: Colors.white, fontSize: 29, fontWeight: FontWeight.bold),),

                                  ],
                                ),
                              ),
                            ),
                            
                            SizedBox(width:23),
                            
                            Container(  // Velocidade
                              width: 300,
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black.withOpacity(0.93),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text("Velocidade (km/h)", style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),),
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(left:40.0, right: 40.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children:[
                                            Text("18,1", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                                            Text("Média", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                                            ]
                                          ),
                                          Column(
                                            children:[
                                            Text("99,7", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                                            Text("Máximo", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                                            ]
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height:20),
                                    Image(image: AssetImage("assets/images/vel.png"))
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(width:23),
                            
                            Container(  // Elevação
                              width: 300,
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black.withOpacity(0.93),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text("Elevação (m)", style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),),
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(left:40.0, right: 40.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children:[
                                            Text("36", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                                            Text("Mínimo", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                                            ]
                                          ),
                                          Column(
                                            children:[
                                            Text("139", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                                            Text("Máximo", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                                            ]
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height:20),
                                    Image(image: AssetImage("assets/images/alt.png"))
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(width:23),

                            Container(  // Temperatura
                              width: 300,
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black.withOpacity(0.93),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text("Temperatura (ºC)", style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),),
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(left:40.0, right: 40.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children:[
                                            Text("9ºC", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                                            Text("Minimo", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                                            ]
                                          ),
                                          Column(
                                            children:[
                                            Text("19ºC", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                                            Text("Máximo", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                                            ]
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height:20),
                                    Image(image: AssetImage("assets/images/temp.png"))
                                  ],
                                ),
                              ),
                            ),
                          ]
                        ),
                      )),
                    ],
                  ),
                ),
                FadeAnimation(1,Padding(
                  padding: const EdgeInsets.only(left:50.0,top: 87),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Bem-vindo",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Carlos",
                        style: Theme.of(context)
                        .textTheme
                        .headline3
                        .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}    

