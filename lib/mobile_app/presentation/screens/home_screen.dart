import 'package:akbar_al_youm_app/mobile_app/core/style/widgets_components/widgets_default_components.dart';
import 'package:akbar_al_youm_app/mobile_app/presentation/components/user_profile_photo_widget.dart';
import 'package:akbar_al_youm_app/mobile_app/presentation/screens/states_screen.dart';
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
  const HomeScreenState({super.key});

  @override
  State<HomeScreenState> createState() => _HomeScreenStateState();
}

class _HomeScreenStateState extends State<HomeScreenState> {

  var spacing = const SizedBox(
    width: 75,
  );
  // Widget _currentWidget = Container();
  var _currentIndex = 0;

  List<Widget> tabs = [
    const HomeScreen(),
    const StatesScreen(),
    ProfileScreen(),
  ];
@override
  void initState() {
  HomeScreen();
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Image(
            image: AssetImage('images/aa.jpg'),
            width: 120,
            height: 80,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.notifications_none_sharp,
              color: Colors.black,
            ),
          ),
        ],
        leadingWidth: 500,
        elevation: 0,
      ),
      body:tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Stats'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),

    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        height: 150,
        child: CarouselSlider(
            items:[Image(
              image: NetworkImage('https://www.facebook.com/photo?fbid=639181438312318&set=a.439654614931669'),
              width: double.infinity,
              fit: BoxFit.cover ,
            ) , ],
            options: CarouselOptions(
              height: 300.0 ,
              initialPage: 0 ,
              enableInfiniteScroll: true ,
              reverse: false ,
              autoPlay: true ,
              autoPlayInterval: Duration (seconds: 3) ,
              autoPlayAnimationDuration: Duration(seconds: 1) ,
              autoPlayCurve: Curves.fastOutSlowIn ,
              scrollDirection: Axis.horizontal ,
              viewportFraction: 1.0 ,
            )),
      ) ,
      Container(
        width: double.infinity,
        height: 150,
        child: Row(
          children: [
            const UserProfilePhotoWidget(AssetImage),
            const SizedBox(
              width: 5,
            ),
            Text('Welcome Back $userFirstName'),
          ],
        ),
      ),
      Center(
        child: Container(
          width: 250,
          child: Row(
            children: [
              Container(
                width: 200,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'New lecture',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey)),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              Icon(Icons.task_alt_outlined),
            ],
          ),
        ),
      )
      
    ]);
  }
}
