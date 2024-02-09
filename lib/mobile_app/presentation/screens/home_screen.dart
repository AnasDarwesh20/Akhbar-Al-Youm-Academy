import 'package:akbar_al_youm_app/mobile_app/core/style/widgets_components/widgets_default_components.dart';
import 'package:akbar_al_youm_app/mobile_app/presentation/components/user_profile_photo_widget.dart';
import 'package:akbar_al_youm_app/mobile_app/presentation/screens/user_profile_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: WidgetsDefaultComponents.appBar(context),
//       body: SizedBox(
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             CarouselSlider(
//                 items: const [
//                   Image(
//                     image: NetworkImage(
//                       'https://superimageconverter.com/output/hq720.jpg',
//                     ),
//                     fit: BoxFit.cover,
//                   ),
//                   Image(
//                     image: NetworkImage(
//                         'https://i.ytimg.com/vi/AEZLMCZTpXI/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCnoqD9gmdexmdLjVEn_EQskueHzQ'),
//                   ),
//                 ],
//                 options: CarouselOptions(
//                   height: 300.0,
//                   initialPage: 0,
//                   enableInfiniteScroll: true,
//                   reverse: false,
//                   autoPlay: true,
//                   autoPlayInterval: Duration(seconds: 3),
//                   autoPlayAnimationDuration: Duration(seconds: 1),
//                   autoPlayCurve: Curves.fastOutSlowIn,
//                   scrollDirection: Axis.horizontal,
//                   viewportFraction: 1.0,
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }





class HomeScreenState extends StatefulWidget {

  @override
  State<HomeScreenState> createState() => _HomeScreenStateState();
}

class _HomeScreenStateState extends State<HomeScreenState> {
  var Spcaing = SizedBox(
    width: 75,
  );

  int _currentIndex = 0 ;

  List<Widget> tabs = [
    HomeScreen(),
    Text('Stats'),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/aa.jpg',),
              width: 120,
              height: 120,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.notifications_none_sharp,
              color: Colors.black,
            ),
          ),
        ],
        leadingWidth: 500,
        elevation: 0,
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.book),label: 'Stats'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile',),
      ],

        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index ;
          });
        },
      ),
    );

  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [

          UserProfilePhotoWidget(AssetImage),
          SizedBox(
            width: 10,
          ),
          Text('Welcome Back $UserFristName'),
        ],
      ),
    ]);
  }
}