import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/student.dart';

class displayStudentScreen extends StatefulWidget {
  
  @override
  
  State<displayStudentScreen> createState() => _displayStudentScreenState();
}

class _displayStudentScreenState extends State<displayStudentScreen> {
   List<Student > lstStudent=[];

  @override
  void didChangeDependencies(){
    lstStudent=ModalRoute.of()
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: lstStudent.isNotEmpty
      ? ListView.builder(
        itemCount: lstStudent.length,
        itemBuilder: (BuildContext (context,int index){
          return ListTile(
            title: Text(lstStudent[index].fname!),
            subtitle: Text(lstStudent[index].address!),
            trailing: Wrap(
              children: [
                IconButton(onPressed:(){},
                icon: const Icon(Icons.edit),
                ),
                IconButton(onPressed:(){},icon: const Icon(Icons.delete),)
                

              ],
            ),)
        },
      )
    ));
  }
}