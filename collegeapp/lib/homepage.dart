import 'package:collegeapp/myimageslider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  height: 150,
                  child: MySlider(),
                ),
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.network(
                              "https://th.bing.com/th/id/R.f8093da53d2eaa7a837cdd91ab89f6e8?rik=nYSTzAGElLVkew&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_221927.png&ehk=l3Iy3APXOYlU0Cn6sDaWYy4onFBupeBDPO4KneJYizo%3d&risl=&pid=ImgRaw&r=0",
                              height: 120,
                            ),
                            Text('Notice'),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.network(
                              "https://civilisstrategies.com/wp-content/uploads/2018/02/special-events-icon-300x300.png",
                              height: 120,
                            ),
                            Text('Events'),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.network(
                              "https://th.bing.com/th/id/R.0e29205488a0378ddd5438f21ded091d?rik=nHiPQQqpuGr4Rw&riu=http%3a%2f%2fcdn.onlinewebfonts.com%2fsvg%2fimg_268341.png&ehk=s%2fhcazAqtifrIIv78aFeMXLn8yLDK5pbtBHX7oPqwrs%3d&risl=&pid=ImgRaw&r=0",
                              height: 120,
                            ),
                            Text('Routine'),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.network(
                              "https://th.bing.com/th/id/R.80ba8bc7129cf1aba94fea809bfc02fc?rik=HxJCj1ruos1opg&pid=ImgRaw&r=0",
                              height: 120,
                            ),
                            Text('Notes'),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.network(
                              "https://i.pinimg.com/originals/55/69/55/5569554b4d8a9bb11965949e1af08dbf.png",
                              height: 120,
                            ),
                            Text('Teachers Record'),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTku2oJC2M9rZu0jq3hLd7n_lgwUEFudUCVLu_XOo7bY0V_7ih5LsWA9p2LBVPFNkbVZx8&usqp=CAU",
                              height: 120,
                            ),
                            Text('Logout'),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
