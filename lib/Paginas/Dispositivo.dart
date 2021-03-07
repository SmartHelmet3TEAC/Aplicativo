import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';


class DispoPage extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(left: 16, top:33, right: 16),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:45.0),
              child: Text(
                "Dispositivo",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 80,),
            Row(
              children: [
                Icon(
                  Icons.sports_motorsports,
                  color: Colors.blue,
                ),
                SizedBox(width: 18,),
                Text(
                  "Definições",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(height: 10,),
            buildAccontOptionRow(context, "Detectável"),
            buildAccontOptionRow(context, "Registro de Atividades"),
            buildAccontOptionRow(context, "Exibição de menus"),
            buildAccontOptionRow(context, "Modo Noturno"),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.notifications,
                  color: Colors.blue,
                ),
                SizedBox(width: 18,),
                Text(
                  "Notificações",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(height: 10,),
            buildNotificationOptionRow("assets/images/call.png","Chamadas", true),
            buildNotification2OptionRow("","Mostrar informações de contacto",true),
            Divider(
              height: 15,
              thickness: 2,
            ),
            buildNotificationOptionRow("assets/images/sms.png","Mensagens",true),
            buildNotification2OptionRow("" ,"Mostrar informações de contacto",true),
            Divider(
              height: 15,
              thickness: 2,
            ),
            buildNotificationOptionRow("assets/images/whatsapp.png","Whatsapp",true),
            buildNotificationOptionRow("assets/images/messenger.png","Messenger",true),
            buildNotificationOptionRow("assets/images/gmail.png","Gmail",false),
            buildNotificationOptionRow("assets/images/alarme.png","Alarme",true),
            buildNotification2OptionRow("","App Smart Helmet",true),
            buildNotificationOptionRow("assets/images/outros.png","Outros", false),


            SizedBox(height:80),
            Center(
              child: OutlineButton(
                padding: EdgeInsets.symmetric(horizontal:40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: (){},
                child: Text(
                  "Desconectar",
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 2.2,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildNotificationOptionRow(String logo, String title, bool isActive) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Transform.scale(
                    scale: 0.7,
                    child: Image(
                      image: AssetImage(logo),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]
                    ),
                  ),
                ],
              ),
              Transform.scale(
                scale: 0.7,
                child: CupertinoSwitch(
                  value: isActive, 
                  onChanged: (bool val){},
                )
              )
            ],
          );
  }


Row buildNotification2OptionRow(String logo, String title, bool isActive) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  
                  SizedBox(width: 10),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]
                    ),
                  ),
                ],
              ),
              Transform.scale(
                scale: 0.7,
                child: CupertinoSwitch(
                  value: isActive, 
                  onChanged: (bool val){},
                )
              )
            ],
          );
  }

  GestureDetector buildAccontOptionRow(BuildContext context, String title) {
    return GestureDetector(
            onTap: (){
              showDialog(context: context,
              builder: (BuildContext context){
                return AlertDialog(
                  title: Text(title),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Opção 1"),
                      Text("Opção 2"),
                      Text("Opção 3"),
                      Text("Opção 4"),
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
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    )
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  )
                ]
              ),
            ),
          );
  }
}