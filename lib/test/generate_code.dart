// import 'package:akbar_al_youm_app/lecture_model.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:uuid/uuid.dart';
//
// var generatedCode;
//
// Future<void> addGeneratedCodeToFirestore(String code) async {
//   // Generate a unique code (you can use any logic based on your requirements)
//
//   LectureModel model = LectureModel(
//     lectureCode: code,
//   );
//
//   // Reference to your Firestore collection
//   FirebaseFirestore.instance
//       .collection('subjects')
//       .doc('math')
//       .collection('lectures')
//       .add(model.toMap())
//       .then((value) {
//     print('Generated code added to Firestore: $code');
//   }).catchError((error) {
//     print(error.toString());
//   });
// }
//
// Future<void> enterLecture(String code) async {
//   if (code == generatedCode) {
//     print('enter lecture');
//   } else {
//     print('false code');
//   }
// }
//
// String generateCode() {
//   generatedCode = Uuid();
//   return generatedCode.v4().substring(0, 8);
// }
//
// class GenerateCode extends StatelessWidget {
//   GenerateCode({super.key});
//
//   var controller = TextEditingController();
//
//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             OutlinedButton(
//               onPressed: () {
//                 generatedCode = generateCode();
//                 addGeneratedCodeToFirestore(generatedCode);
//               },
//               child: const Text('generate code'),
//             ),
//             Text('code : ${generatedCode}'),
//             TextFormField(
//               onFieldSubmitted: (value)
//               {
//                 enterLecture(controller.text) ;
//               },
//               controller: controller,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
