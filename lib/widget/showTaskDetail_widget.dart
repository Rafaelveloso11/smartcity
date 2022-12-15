// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smartcity/constants.dart';
import 'package:smartcity/home_screen.dart';

class ShowTaskDetailWidget extends StatefulWidget {
  const ShowTaskDetailWidget({Key? key}) : super(key: key);

  @override
  State<ShowTaskDetailWidget> createState() => _ShowTaskDetailWidgetState();
}

class _ShowTaskDetailWidgetState extends State<ShowTaskDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: kBackGroundColor),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [kPrimaryColor, kBackGroundColor],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text("Nº do Serviço : 45476324-8",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0)),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text("Solicitante : Teste da Silva",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0)),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("Endereço : Rua Pereira Nunes, 175 - Tijuca",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0))),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("Demanda : Alagamento",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0))),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("Data de abertura : 26/09/2022",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0))),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text(
                          "Descrição : A rua está totalmente alagada, impossibilitando o acesso dos moradores. ",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0))),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("Status: Em andamento",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0))),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("Previsão de conclusão : 05/10/2022",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0))),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                        left: 30.0, top: 100.0, bottom: 30.0, right: 30.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(20.0),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return const HomeScreen();
              });
        },
        backgroundColor: kPrimaryColor,
        foregroundColor: kBackGroundColor,
        child: const Icon(
          Icons.arrow_back,
          size: 36,
        ),
      ),
    );
  }
}
