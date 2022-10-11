class Task  {
  Task({required this.name, this.isTaskDone = false});

  final String name;
  bool isTaskDone;

  void toggler(){
    isTaskDone = !isTaskDone;
  }
}