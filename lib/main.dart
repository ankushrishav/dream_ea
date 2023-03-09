import 'package:ea_app/pages/dream.dart';
import 'package:ea_app/widgets/card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'EA FANTASY',
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    routes: {
      "/dream": (context) => DreamPage(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class CImages {
  CImages({required this.image});
  String image;
}

final List<CImages> _cImages = <CImages>[
  CImages(image: 'assets/images/CSK.jpeg'),
  CImages(image: 'assets/images/DC.jpeg'),
  CImages(image: 'assets/images/GT.jpeg'),
  CImages(image: 'assets/images/KKR.jpeg'),
  CImages(image: 'assets/images/LSG.jpeg'),
  CImages(image: 'assets/images/MI.jpeg'),
  CImages(image: 'assets/images/PK.jpeg'),
  CImages(image: 'assets/images/RC.jpeg'),
  CImages(image: 'assets/images/RR.jpeg'),
  CImages(image: 'assets/images/SRH.jpeg'),
];

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            actions: [
              Container(
                height: 180.0,
                width: 180.0,
                padding: const EdgeInsets.all(5.0),
                color: Colors.grey,
                child: Image.asset('assets/images/logo1.png'),
              ),
              SizedBox(
                width: 150.0,
              ),
              IconButton(
                  onPressed: () {
                    debugPrint('Notification tapped');
                  },
                  icon: Icon(Icons.notifications))
            ],
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'Home',
                ),
                Tab(
                  text: 'Teams',
                ),
                Tab(
                  text: 'Players',
                ),
                Tab(
                  text: 'Settings',
                ),
              ],
            ),
          ),
          body: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 160.0,
                    color: Colors.grey,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _cImages.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Card(
                            elevation: 2.0,
                            child: Container(
                              height: 150.0,
                              width: 350.0,
                              child: Image.asset(
                                _cImages[index].image,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Material(
                    elevation: 5.0,
                    child: Container(
                      decoration: BoxDecoration(),
                      child: TabBar(
                        indicator: UnderlineTabIndicator(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2.0)),
                        labelColor: Colors.black,
                        tabs: [
                          Tab(
                            text: 'FIXTURES',
                          ),
                          Tab(
                            text: 'LIVE',
                          ),
                          Tab(
                            text: 'RESULTS',
                          ),
                          Tab(
                            text: 'ODDS',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Select a match')],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Expanded(child: Container(child: DreamCard()))
                ],
              ),
            ],
          ),
        ));
  }
}
