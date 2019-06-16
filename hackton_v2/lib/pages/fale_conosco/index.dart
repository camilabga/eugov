import 'package:flutter/material.dart';
import 'package:hackton_v2/custom-widgets/button/index.dart';
import 'package:hackton_v2/custom-widgets/container_with_margin/index.dart';
import 'package:hackton_v2/custom-widgets/divider_input/index.dart';
import 'package:hackton_v2/custom-widgets/edit_text/index.dart';
import 'package:hackton_v2/custom-widgets/text/index.dart';
import 'package:hackton_v2/navigation/nav_slide_from_bottom.dart';
import 'package:hackton_v2/navigation/nav_slide_from_top.dart';
import 'package:hackton_v2/pages/home.dart';
import 'package:hackton_v2/values/colors.dart' as colors;
class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: ContainerWithMargin(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Expanded(
              flex: 2,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  EditText(
                    placeholder: "Nome",
                  ),
                  SizedBox(height: 20,),
                  
                  EditText(
                    placeholder: "Cpf",
                  ),
                  SizedBox(height: 20,),
                  
                  EditText(
                    placeholder: "Senha",
                  ),
                  SizedBox(height: 20,),
                  
                  EditText(
                    multiline: true,
                    placeholder: "Confirmar senha",
                  ),
                  SizedBox(height: 70,),
                 
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
                               Navigator.push(context, NavSlideFromTop(page: HomePage()

                              
                              )
                              );
                              }
                           )) ]
                )
              ,
            )
          ],
        ),
      ),
    );
  }
}