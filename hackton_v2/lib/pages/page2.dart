import 'package:flutter/material.dart';
import 'package:hackton_v2/custom-widgets/card_view/index.dart';
import 'package:hackton_v2/custom-widgets/iten.dart';
import 'package:hackton_v2/custom-widgets/text/index.dart';
import 'package:hackton_v2/values/colors.dart' as colors;
import 'package:hackton_v2/custom-widgets/iten.dart';
class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: new Drawer(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             Column(
               children: <Widget>[
                 new UserAccountsDrawerHeader(
                   accountName: new Text('Teste',
                   style: TextStyle(
                     fontFamily: 'Raleway'
                   )),
                   accountEmail: new Text('teste@teste.com.br'),
                   currentAccountPicture: new CircleAvatar(
                   backgroundImage: new NetworkImage('http://placekitten.com/200/300'),
                   ),
                 ),
               ]
             ),
             new ListTile(
               title: new Text('Eu'),
             ),
           ],
         )
       ),
      backgroundColor: Colors.white,
      appBar:AppBar(
        title: Text("EuGov",
        style: TextStyle(fontSize: 20),
        )
      ),
      body:SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.only(top:8.0),
              child: Center(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(
                            text: "Receita Federal:",
                            color: Colors.black,
                            big: true,
                            title: true,
                  ),
                  ),
                        ],
                      ),   
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Items(
                            iconColor :Colors.red,
                            icon: Icons.close,
                            texto: "Renovação de CNH",
                            
                            cor: Colors.white10,
                          ),
                        ),SizedBox(
                          height: 8,
                        ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Items(
                            iconColor :Colors.red,
                            icon: Icons.close,
                            texto: "Infração",
                            
                            cor: Colors.white10,
                        ),
                         ),
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(
                            text: "Polícia Federal:",
                            color: Colors.black,
                            big: true,
                            title: true,
                  ),
                  ),
                        ],
                      ),   
                        Items(
                            iconColor :Colors.red,
                            icon: Icons.close,
                          cor: Colors.white10,
                          texto: "Renovaçao de passaporte ",
                          
                        ),  
                    ],
                  ),
                ),

                      ]
                    ),
          
                )
              ),
              Container(
                  width: MediaQuery.of(context).size.width - 20,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomText(
                              text: "Receita Federal:",
                              color: Colors.black,
                              big: true,
                              title: true,
                  ),
                  ),
                          ],
                        ),   
                          Items(
                            iconColor: Colors.green,
                            icon: Icons.check,
                            cor: Colors.white10,
                            texto: "Darf-IRPF 2018",
                            data:"2018" ,
                          ),  
                      ],
                    ),
                ),
            ]
                  ),
          
        ),
      );
      
  
  }
}