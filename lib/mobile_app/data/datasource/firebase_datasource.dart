import 'package:akbar_al_youm_app/mobile_app/data/models/student_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class BaseFirebaseDataSource {
  Future<StudentModel> getStudentData();
}

class FirebaseDataSource extends BaseFirebaseDataSource {
  StudentModel? data;

  @override
  Future<StudentModel> getStudentData() async {
    DocumentSnapshot<Map<String , dynamic>> snapshot = await FirebaseFirestore.instance.collection('students').doc('YNGT4CxYmIzcpt3OYGjF').get() ;

    if(snapshot.exists){
      return StudentModel.fromFireStore(snapshot.data()!);
    } else {
      throw Exception('student not found') ;
    }
  }
}
