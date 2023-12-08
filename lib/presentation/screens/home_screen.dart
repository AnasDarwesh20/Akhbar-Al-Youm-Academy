import 'package:akbar_al_youm_app/core/services/servecies_locator.dart';
import 'package:akbar_al_youm_app/core/style/numbers/app_default_numbers.dart';
import 'package:akbar_al_youm_app/core/style/widgets_components/widgets_default_components.dart';
import 'package:akbar_al_youm_app/presentation/controller/aea_bloc/aea_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WidgetsDefaultComponents.appBar(context),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CarouselSlider(
                items: const [
                  Image(
                    image: NetworkImage(
                      'https://superimageconverter.com/output/hq720.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  Image(
                    image: NetworkImage(
                        'https://i.ytimg.com/vi/AEZLMCZTpXI/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCnoqD9gmdexmdLjVEn_EQskueHzQ'),
                  ),
                ],
                options: CarouselOptions(
                  height: 300.0,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  scrollDirection: Axis.horizontal,
                  viewportFraction: 1.0,
                )),
          ],
        ),
      ),
    );
  }
}
