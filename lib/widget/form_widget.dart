import 'package:flutter/material.dart';
import 'package:smartcity/constants.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      title: const Text(
        'Nova Solicitação',
        style: TextStyle(color: kPrimaryColor),
      ),
      content: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Tarefa',
                hintStyle: const TextStyle(
                  color: kPrimaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'CEP',
                hintStyle: const TextStyle(
                  color: kPrimaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Endereço',
                hintStyle: const TextStyle(
                  color: kPrimaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Bairro',
                hintStyle: const TextStyle(
                  color: kPrimaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                // ignore: prefer_const_constructors

                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: kPrimaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Descrição',
                hintStyle: const TextStyle(
                  color: kPrimaryColor,
                ),
              ),
            )
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              primary: kPrimaryColor,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Adicionar',
              style: TextStyle(
                color: kBackGroundColor,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
