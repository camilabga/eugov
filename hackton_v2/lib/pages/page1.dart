import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackton_v2/custom-widgets/card_view/index.dart';
import 'package:hackton_v2/custom-widgets/text/index.dart';
import 'package:hackton_v2/navigation/nav_slide_from_right.dart';
import 'package:hackton_v2/pages/login/index.dart';
import 'package:hackton_v2/values/colors.dart' as colors;

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName:
                  new Text('Teste', style: TextStyle(fontFamily: 'Raleway')),
              accountEmail: new Text('teste@teste.com.br'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage:
                    new NetworkImage('http://placekitten.com/200/300'),
              ),
            ),
          ]),
          new ListTile(
            title: new Text('Eu'),
          ),
        ],
      )),
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text(
        "EuGov",
        style: TextStyle(fontSize: 20),
      )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: 32.0, right: 16, left: 16, bottom: 16),
          child: CardView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image(
                          image: AssetImage(
                              'assets/images/logo-republica.png'),
                          height: 45,
                          width: 45,
                        ),
                        Flexible(
                            child: Column(
                            children: <Widget>[
                              CustomText(
                                color: Colors.black,
                                text: 'República Federativa do Brasil',
                              ),
                              CustomText(
                                color: Colors.black,
                                text: 'Documento Nacional de Identidade',
                              ),
                              CustomText(
                                color: Colors.black,
                                text: '0123456789-0',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Image(
                          image: AssetImage('assets/images/user.png'),
                          height: 155,
                          width: 155,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CustomText(
                                text: "Nome:",
                                color: Colors.green,
                              ),
                              CustomText(
                                text: " Joao Vitor De Oliveira Ricardi",
                                color: Colors.black,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: <Widget>[
                              CustomText(
                                text: "CPF: ",
                                color: Colors.green,
                              ),
                              CustomText(
                                text: "123.456.789-00",
                                color: Colors.black,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: <Widget>[
                              CustomText(
                                text: "RG: ",
                                color: Colors.green,
                              ),
                              CustomText(
                                text: "12.345.678-9",
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              CustomText(
                                text: "Data de Emissão (RG): ",
                                color: Colors.green,
                              ),
                              CustomText(
                                text: "29/07/2022",
                                color: Colors.black,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: <Widget>[
                              CustomText(text: "CNH:", color: Colors.green),
                              CustomText(
                                text: "12345678900",
                                color: Colors.black,
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              CustomText(
                                text: "Data de Expedição: ",
                                color: Colors.green,
                              ),
                              CustomText(
                                text: "11/12/2019",
                                color: Colors.black,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                        BorderRadius.circular(35),
                                        color: Colors.white
                                      ),
                                  height: 50,
                                  child: FlatButton(

                                    onPressed: () {
                                       Navigator.push(context, NavSlideFromRight(page: LoginPage())

                                       );
                                       },
                                    child: 
                                    CustomText(
                                      text: 'Ver Verso',
                                      color: colors.colorGov
                                    )                                     
                                  ),
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
