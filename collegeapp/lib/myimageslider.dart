import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/OIP.Qzmu3uKO7rzHJWV7NnpeKAHaEb?pid=ImgDet&rs=1"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/R.8991af778bc03ff57e118b7dfa753798?rik=hpFx7lQ3CK7YVA&riu=http%3a%2f%2fwww.vbcpsblogs.com%2fcore%2fwp-content%2fuploads%2f2016%2f10%2fCollege-image-for-Core.jpg&ehk=95TBvTDSU8zKQYYpJp44ltUpVVUFFPmWl077xttg%2fQU%3d&risl=&pid=ImgRaw&r=0"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://th.bing.com/th/id/R.8991af778bc03ff57e118b7dfa753798?rik=hpFx7lQ3CK7YVA&riu=http%3a%2f%2fwww.vbcpsblogs.com%2fcore%2fwp-content%2fuploads%2f2016%2f10%2fCollege-image-for-Core.jpg&ehk=95TBvTDSU8zKQYYpJp44ltUpVVUFFPmWl077xttg%2fQU%3d&risl=&pid=ImgRaw&r=0"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
