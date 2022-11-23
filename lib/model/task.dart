class Task {
  final String taskName;
  final String description;
  final DateTime taskTime;
  final bool isDone;

  Task(
    this.taskName,
    this.description,
    this.taskTime,
    this.isDone,
  );
}

List<Task> listTask = [
  Task(
    'Alagamento',
    'Rua Pereira Nunes, 175 - Tijuca',
    DateTime(2022, 9, 26, 7, 30),
    false,
  ),
  Task(
    'Semáforo quebrado',
    'Rua Dias da Cruz, 255 - Méier',
    DateTime(2022, 9, 26, 10, 00),
    false,
  ),
  Task(
    'Poste sem luz',
    'Avenida Atlântica, 1750 - Ipanema',
    DateTime(2022, 9, 26, 12, 30),
    false,
  ),
  Task(
    'Rua esburacada',
    'Rua teodoro da silva, 622 - Grajaú',
    DateTime(2022, 9, 26, 15, 30),
    false,
  ),
];
