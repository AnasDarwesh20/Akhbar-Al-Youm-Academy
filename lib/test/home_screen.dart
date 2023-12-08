import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FirstHomeScreen extends StatefulWidget {
  @override
  State<FirstHomeScreen> createState() => _FirstHomeScreenState();
}

class _FirstHomeScreenState extends State<FirstHomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        children: [
          CarouselSlider(
            items: const [
              Image(
                image: NetworkImage(
                    'https://blogger.googleusercontent.com/img/a/AVvXsEgvOsheUoK2oVX5ZPA46U2YN9gr54pr3p8xMzloH0zArx2IX0t-Z2RO1GW4UevJcaAGUoK5bHoim3zJkq3hUAqslIy1w_6mxBSN74gerR5d916hcQjbZoo2rUFQUEPxU-aqBIbXx2NM35El7GU-rNL5YQro5ZyYGmFer_6abuWsnfvkW5GxJewOzhMmXA=s16000'),
                fit: BoxFit.fill,
                width: double.infinity,
              ),
              Image(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdM5fxETU-8Eiyuc2GHV8knTYJvdIW5s71kA&usqp=CAU'),
                fit: BoxFit.fill,
                width: double.infinity,
              ),
              Image(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdET-PTOwfaR6ksDsKwIEJFRRkQ5lpkNrzCg&usqp=CAU',
                ),
                fit: BoxFit.fill,
                width: double.infinity,
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
            ),
          ),
          SizedBox(
            height: 20.0,
          ) ,
          SizedBox(
            width: double.infinity,
            height: 200.0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                child: Image(
                  image: NetworkImage('https://www.asu.edu.eg/141090/2022/events/5b8635f43557c660d3ca5bf49eaebf85.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ) ,
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(
              bottom: 20.0,
              left: 25.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                  ),
                  child: CircleAvatar(
                    radius: 10.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                  ),
                  child: CircleAvatar(
                    radius: 10.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                  ),
                  child: CircleAvatar(
                    radius: 10.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.0,
                    right: 15.0,
                  ),
                  child: CircleAvatar(
                    radius: 10.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Att points',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                '5 ',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade900,
        elevation: 0.0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white12,
        selectedFontSize: 12.0,
        unselectedFontSize: 8.0,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.newspaper_sharp,
            ),
            label: 'News',
          ),
        ],
      ),
    );
  }
}
