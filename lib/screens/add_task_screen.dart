import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';


class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Text('Add Task',
              textAlign: TextAlign.center,style: TextStyle(fontSize: 30.0,

            color: Colors.deepPurple),),
            TextField(
              onChanged: (newText){
                newTaskTitle = newText;
              },
              textAlign: TextAlign.center,
              autofocus: true,
            ),
            FlatButton(
              onPressed: (){


                Provider.of<TaskData>(context).addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: Text('Add',style: TextStyle(color: Colors.white),),

              color: Colors.deepPurple,

            ),
          ],
        ),
      ),
    );
  }
}
