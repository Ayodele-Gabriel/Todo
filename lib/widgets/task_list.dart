import 'package:flutter/material.dart';
import 'package:todo/widgets/task_tile.dart';
import 'package:todo/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isTaskDone,
              callback: (bool? value) {
                taskData.updateTask(task);
              },
              longPress: (){
                taskData.deleteTask(task);
              }
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
