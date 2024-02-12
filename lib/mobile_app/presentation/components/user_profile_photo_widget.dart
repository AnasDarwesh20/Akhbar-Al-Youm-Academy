import 'package:flutter/material.dart';

String userFirstName = 'Ahmed' ;

class UserProfilePhotoWidget extends StatelessWidget {

  const UserProfilePhotoWidget(
      AssetImage, {super.key}

      );

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: AssetImage('images/a.jpg'),
      radius: 60,
    );

  }
}