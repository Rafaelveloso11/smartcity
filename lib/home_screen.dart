import 'dart:io';

import 'package:flutter/material.dart';
import 'package:smartcity/constants.dart';

import 'package:smartcity/model/task.dart';
import 'package:smartcity/signin_screen.dart';
import 'package:smartcity/widget/card_widget.dart';
import 'package:smartcity/widget/form_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final newList = listTask.where((element) => !element.isDone).toList();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: size.width,
                height: size.height / 3,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10),
                    right: Radius.circular(10),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      kPrimaryColor,
                      kBackGroundColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  children: const [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Teste da Silva',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: size.height / 4.5,
              left: 16,
              child: Container(
                width: size.width - 32,
                height: size.height / 1.4,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10),
                    right: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ListView.separated(
                    padding: const EdgeInsets.only(
                      top: 8,
                    ),
                    itemBuilder: (context, index) {
                      return CardWidget(
                        task: newList[index],
                        perfil: 'cidadao',
                      );
                    },
                    itemCount: newList.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 4,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: kBackGroundColor,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.whatsapp,
                color: kPrimaryColor,
                size: 28,
              ),
            ),
            IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text("Aviso!"),
                          content: Text("Deseja Sair ? "),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return SignInScreen();
                                  }));
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: kPrimaryColor),
                                child: const Text("Sim")),
                            ElevatedButton(
                                onPressed: () async {
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.red),
                                child: const Text("Não")),
                          ],
                        ));
              },
              icon: const Icon(
                Icons.exit_to_app,
                color: kPrimaryColor,
                size: 28,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return const FormWidget();
              });
        },
        backgroundColor: kPrimaryColor,
        foregroundColor: kBackGroundColor,
        child: const Icon(
          Icons.add,
          size: 36,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
