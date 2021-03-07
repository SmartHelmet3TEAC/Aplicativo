import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Widgets/widgets.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  )
);

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(image: 'assets/images/fungologin.jpg',),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: FadeAnimation(1.4,Column(
            children: [
              Flexible(
                child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 200,),
                        Padding(
                          padding: const EdgeInsets.only(left:45.0),
                          child: Text(
                            'Smart Helmet',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextInputField(
                    icon: FontAwesomeIcons.envelope,
                    hint: "Email",
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  PasswordInput(
                    icon: FontAwesomeIcons.lock,
                    hint: "Password",
                    inputAction: TextInputAction.done,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'ForgotPassword'),
                    child: Text(
                      "Esqueceu a Password",
                      style: kBodyText,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RoundedButton(
                      buttonName: "Login",
                    ),
                  
                  SizedBox(
                    height: 25,
                  ),
                  
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'CreateNewAccount'),
                child: Container(
                  child: Text(
                    "Criar Conta Nova",
                    style: kBodyText,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: kWhite
                      )
                    )
                  ),
                ),
              ),
              SizedBox(
                height: 40
              )
            ],
          ),)
        )
      ],
    );
  }
}

