import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:smartcity/constants.dart';
import 'package:smartcity/home_screen.dart';
import 'package:smartcity/register_screen.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      reverse: true,
      child: Form(
        key: formKey,
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/smartcity_logo.jpg"),
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomCenter),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Login",
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const RegisterScreen();
                                }));
                              },
                              child: Text(
                                "Cadastre-se",
                                style: Theme.of(context).textTheme.button,
                              ))
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.perm_identity,
                                color: kPrimaryColor,
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                  validator: (value) =>
                                      (value == null || value.isEmpty)
                                          ? "Informe o CPF"
                                          : null,
                                  decoration:
                                      const InputDecoration(hintText: "CPF"),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    MaskedInputFormatter('###.###.###-##')
                                  ]),
                            )
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.lock,
                              color: kPrimaryColor,
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                                decoration:
                                    const InputDecoration(hintText: "Senha"),
                                obscureText: true,
                                validator: (value) =>
                                    (value == null || value.isEmpty)
                                        ? "Informe a senha"
                                        : null),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const RegisterScreen();
                                }));
                              },
                              child: Text(
                                "Esqueceu a senha?",
                                style: Theme.of(context).textTheme.button,
                              ))
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Row(
                          children: [
                            const SizedBox(width: 16),
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.5)),
                              ),
                              child: Icon(Icons.chat,
                                  color: Colors.white.withOpacity(0.5)),
                            ),
                            const Spacer(),
                            Container(
                                padding: const EdgeInsets.all(16),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kPrimaryColor),
                                child: GestureDetector(
                                  onTap: () {
                                    if (formKey.currentState!.validate()) {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const HomeScreen();
                                      }));
                                    }
                                  },
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    color: Colors.black,
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
