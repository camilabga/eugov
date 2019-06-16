
import 'package:flutter/material.dart';
import 'package:hackton_v2/custom-widgets/button/index.dart';
import 'package:hackton_v2/custom-widgets/container_corner/index.dart';
import 'package:hackton_v2/custom-widgets/container_with_margin/index.dart';
import 'package:hackton_v2/custom-widgets/divider_input/index.dart';
import 'package:hackton_v2/custom-widgets/edit_text/index.dart';
import 'package:hackton_v2/custom-widgets/text/index.dart';
import 'package:hackton_v2/navigation/nav_slide_from_right.dart';
import 'package:hackton_v2/navigation/nav_slide_from_top.dart';
import 'package:hackton_v2/pages/fale_conosco/index.dart';
import 'package:hackton_v2/pages/home.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hackton_v2/values/colors.dart' as colors;


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


FirebaseMessaging messaging = FirebaseMessaging();
@override
  void initState() {
    messaging.configure(
      onLaunch:(Map<String,dynamic> event){} ,
      onMessage:(Map<String,dynamic> event){}  ,
      onResume: (Map<String,dynamic> event){} );
      messaging.requestNotificationPermissions(
        IosNotificationSettings(sound: true,alert: true,badge: true));
        messaging.getToken().then((msg){});
      
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        body: Container(
          color: Colors.grey[300],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Center(
                child: Image(
                    image: AssetImage('assets/images/logo-eugov-2.png'),                    
                    height: 210,
                    width: 210,
                  )
                )
              ),
              Expanded(
                flex: 2,
                child: ContainerCorner(
                  color: Colors.white,
                  child: ContainerWithMargin(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        EditText(
                          placeholder: "CPF",
                        ),
                        DividerInput(),
                        EditText(
                          placeholder: "SENHA",
                        ),
                        DividerInput(),
                        DividerInput(),
                        Container(
                          width: 200,
                          decoration: BoxDecoration(
                            color: colors.colorGov,
                            borderRadius: BorderRadius.circular(24)
                          ),
                          child: FlatButton(
                            child: CustomText(
                              text: "Entrar",
                            ),
                            onPressed: () {
                            Navigator.push(context, NavSlideFromRight(page: HomePage()
                              )
                              );
                            },
                            
                          ),
                        ),
                        DividerInput(),
                        DividerInput(),
                        DividerInput(),
                        DividerInput(),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(24)
                          ),
                          child: FlatButton(
                            child: CustomText(
                              text: "Cadastrar",
                              color: Colors.black,
                            ),
                            onPressed: () {
                               Navigator.push(context, NavSlideFromRight(page: Cadastro()
                              )
                              );
                            },
                            
                          ),
                        ),
                    
                     
                      ],
                    ),
                  ),
                )
              )
            ],
            
          )
        )
    );
  }
}
