import 'package:auth/screens/home/departments.dart';
import 'package:auth/screens/home/subjectList.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class BookManager extends StatefulWidget {
   const BookManager({ Key key , @required this.semester , @required this.department}) : super(key: key);
    final department;
    final semester;
  @override
  _BookManagerState createState() => _BookManagerState();
}

class _BookManagerState extends State<BookManager> {
  final databaseReference = Firestore.instance;
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : StreamBuilder(
        stream : Firestore.instance.collection('department').snapshots(),
        builder: (context , snapshot){
            if(!snapshot.hasData) return Text('Loading ...');
            return ListView.builder(
              itemCount: snapshot.data.documents[_getIndex(widget.department)][widget.semester].length,
              itemBuilder: (context , index){
                return ListTile(
                    title : Text(snapshot.data.documents[_getIndex(widget.department)][widget.semester][index]),
                );
              }
            );
        },
      ),
      );
  }
  
  void getData() {
    databaseReference
    .collection("department")
    .getDocuments()
    .then((QuerySnapshot snapshot) {
          snapshot.documents.forEach((f) => {
          print(f.data[widget.department][widget.semester]['subject']),
        },
      );
    }
  );
  }
  int _getIndex(String dept){
    if(dept=='Chemical Engineering')
      return 0;
    if(dept=='Civil Engineering')
      return 1;
    if(dept=='Computer Engineering')
      return 2;
    if(dept=='Electrical Engineering')
      return 3;
    if(dept=='Electronics Engineering')
      return 4;
    if(dept=='Mechanical Engineering')
      return 5;
  }
}
