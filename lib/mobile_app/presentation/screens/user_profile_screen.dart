import 'package:akbar_al_youm_app/mobile_app/presentation/components/user_profile_photo_widget.dart';
import 'package:flutter/material.dart';
var Spacing = SizedBox(height: 20,);
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 130,
        elevation: 0,
        leading: TextButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          icon:  Icon(Icons.arrow_drop_down_outlined),
          label:  Text('Home'),

        ),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Center(
            child: UserProfilePhotoWidget(
                AssetImage
            ),
          ),
          Spacing ,
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text('Student Name : Ahmed Mostafa Abd El Aziz'),
          ),
          Spacing ,
          Padding(
            padding: const EdgeInsets.only(left:8),
            child: Text('Student Code : 1601048'),
          ),
          Spacing ,
          Row(
            children: [
              Text('Password : 8401061'),
              SizedBox(
                width: 15,
              ),
              TextButton(onPressed: () {},
                  style:ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.black26)),
                  child:Text('Change Password')),
            ],
          )
        ],

      ),
    );
  }
}