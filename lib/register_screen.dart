import 'package:flutter/material.dart';
import 'package:smartcity/constants.dart';
import 'package:smartcity/home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final form = GlobalKey<FormState>();
  final List<String> lstProfile = ["Cidadao", "Org. Municipal", "Eq. de Campo"];
  String profile = "Cidadao";
  bool showTextField = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: kBackGroundColor),
      body: SingleChildScrollView(
          child: Container(
              margin: const EdgeInsets.all(10),
              child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Informe seus dados",
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.perm_identity,
                              color: kPrimaryColor,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(hintText: "CPF"),
                              keyboardType: TextInputType.number,
                            ),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.lock,
                              color: kPrimaryColor,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(hintText: "Senha"),
                              keyboardType: TextInputType.visiblePassword,
                            ),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.phone,
                              color: kPrimaryColor,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(hintText: "Telefone"),
                              keyboardType: TextInputType.number,
                            ),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.email,
                              color: kPrimaryColor,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(hintText: "E-mail"),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          DropdownButton<String>(
                            value: profile,
                            onChanged: (String? value) {
                              setState(() {
                                profile = value!;
                                showTextField =
                                    (value != "Cidadao") ? true : false;
                              });
                            },
                            hint: const Text("Escolha o perfil"),
                            items: lstProfile.map((String singleItem) {
                              return DropdownMenuItem<String>(
                                  value: singleItem,
                                  child: Container(
                                      height: 100,
                                      width: 345,
                                      alignment: Alignment.centerLeft,
                                      child: Row(children: [
                                        const Padding(
                                          padding: EdgeInsets.only(right: 8.0),
                                          child: Icon(
                                            Icons.work,
                                            color: kPrimaryColor,
                                          ),
                                        ),
                                        Text(singleItem)
                                      ])));
                            }).toList(),
                          )
                        ],
                      ),
                      Visibility(
                        visible: showTextField,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.paste,
                                color: kPrimaryColor,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                decoration:
                                    InputDecoration(hintText: "Matricula"),
                                keyboardType: TextInputType.emailAddress,
                              ),
                            )
                          ],
                        ),
                      ),
                      FittedBox(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const HomeScreen();
                            }));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(top: 20),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 26, vertical: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: kPrimaryColor,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Cadastrar",
                                  style: Theme.of(context)
                                      .textTheme
                                      .button!
                                      .copyWith(
                                        color: Colors.black,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )))),
    );
  }
}
