import 'package:flutter/material.dart';

String UserFristName = 'Ahmed' ;

class UserProfilePhotoWidget extends StatelessWidget {

  const UserProfilePhotoWidget(
      AssetImage,

      );

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage('images/a.jpg'),
      radius: 60,
    );

  }
}