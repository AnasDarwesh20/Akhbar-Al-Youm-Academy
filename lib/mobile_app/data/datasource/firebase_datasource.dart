import 'package:akbar_al_youm_app/mobile_app/core/services/new_user_create.dart';
import 'package:akbar_al_youm_app/mobile_app/data/models/student_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseFirebaseDataSource {
  Future<StudentModel> getStudentData();

  Future<void> registerStudent(StudentModel model, context);

  Future<void> loginStudent(StudentModel model, context);

  Future<void> newLectureAttend({
    required StudentModel model,
    required SubjectModel subject,
  });
}

class FirebaseDataSource extends BaseFirebaseDataSource {
  StudentModel? data;

  @override
  Future<StudentModel> getStudentData() async {
    DocumentSnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
        .instance
        .collection('students')
        .doc('YNGT4CxYmIzcpt3OYGjF')
        .get();

    if (snapshot.exists) {
      return StudentModel.fromFireStore(snapshot.data()!);
    } else {
      throw Exception('student not found');
    }
  }

  @override
  Future<void> registerStudent(StudentModel model, context) async {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: model.email,
      password: model.id.toString(),
    )
        .then((value) {
      newUserCreate(
        englishName: model.englishName,
        arabicName: model.arabicName,
        id: model.id,
        subjects: model.subjects,
        phoneNumber: model.phoneNumber,
        email: model.email,
      );
    }).catchError((error) {
      print(error.toString()) ;
    });
  }

  @override
  Future<void> newLectureAttend(
      {required StudentModel model, required SubjectModel subject}) async {
    FirebaseFirestore.instance
        .collection('students')
        .doc('computer science')
        .collection('year1')
        .doc()
        .collection('attendance')
        .doc('math')
        .collection('lectures')
        .add(model.toMap())
        .then((value) {})
        .catchError((error) {});
  }

  @override
  Future<void> loginStudent(StudentModel model, context) async {}
}
