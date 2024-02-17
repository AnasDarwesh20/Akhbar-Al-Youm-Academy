import 'package:akbar_al_youm_app/mobile_app/data/models/student_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> newUserCreate({
  required englishName,
  required arabicName,
  required id,
  String? photo,
  required subjects,
  required phoneNumber,
  required email,
}) async {
  StudentModel model = StudentModel(
    englishName: englishName,
    arabicName: arabicName,
    id: id,
    photo: photo ??
        'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=826&t=st=1708174290~exp=1708174890~hmac=e190b9e93fba904eb9c21fbdb3e8bd52d9e6e0c14ca22827c733acf1d9d42780',
    subjects: subjects,
    phoneNumber: phoneNumber,
    email: email,
  );

  /// ToDo : the faculty should be added from the admin and year
  FirebaseFirestore.instance
      .collection('students')
      .doc('computer science')
      .collection('year1')
      .doc(model.id)
      .set(model.toMap())
      .then((value) {
        print('student added successfully') ;
  })
      .catchError((error) {
        print(error.toString()) ;
  });
}
