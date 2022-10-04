import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase{
  List todoList = [];

  final _theBox = Hive.box('thebox');

  // inisialisasi for the first time
  void createInitialData(){
    todoList = [
      ["Clean room", false],
      ["Read some books", false],
    ];
  }

  // load data dari database
  void loadData(){
    todoList = _theBox.get("TODOLIST");
  }

  // update database
  void updateDatabase(){
    _theBox.put("TODOLIST", todoList);
  }
}