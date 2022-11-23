import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:smartcity/constants.dart';

import '../model/task.dart';
import 'form_widget.dart';

class CardWidget extends StatelessWidget {
  final Task task;
  const CardWidget({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
        key: const ValueKey(0),
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          dismissible: DismissiblePane(onDismissed: () {}),
          children: [
            const SizedBox(
              width: 2,
            ),
            SlidableAction(
              borderRadius: BorderRadius.circular(16),
              onPressed: (_) {},
              backgroundColor: kPrimaryColor,
              foregroundColor: kBackGroundColor,
              icon: Icons.done_outlined,
              label: 'Pronto',
            ),
            const SizedBox(
              width: 2,
            ),
            SlidableAction(
              borderRadius: BorderRadius.circular(16),
              onPressed: (_) {},
              backgroundColor: const Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Remover',
            ),
          ],
        ),
        child: GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return const FormWidget();
                });
          },
          child: Card(
            elevation: 8,
            shadowColor: kBackGroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              minLeadingWidth: task.isDone ? 0 : 2,
              leading: task.isDone
                  ? const SizedBox()
                  : Container(
                      width: 2,
                      color: kPrimaryColor,
                    ),
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  task.taskName,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Text(
                task.description,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 16,
                ),
              ),
              trailing: Text(
                task.isDone
                    ? 'Concluído'
                    // ignore: prefer_interpolation_to_compose_strings
                    : DateFormat('dd/MM/yyyy').format(task.taskTime),
                style: const TextStyle(
                  color: kPrimaryColor,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ));
  }
}
