import 'package:ea_app/pages/dream.dart';
import 'package:flutter/material.dart';

class DreamCard extends StatefulWidget {
  const DreamCard({Key? key}) : super(key: key);

  @override
  State<DreamCard> createState() => _DreamCardState();
}

var list = [
  'assets/images/CSK.jpeg',
  'assets/images/DC.jpeg',
  'assets/images/GT.jpeg',
  'assets/images/KKR.jpeg',
  'assets/images/LSG.jpeg',
  'assets/images/MI.jpeg',
  'assets/images/PK.jpeg',
  'assets/images/RC.jpeg',
  'assets/images/RR.jpeg',
  'assets/images/SRH.jpeg'
];

class _DreamCardState extends State<DreamCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        var randomItem = (list..shuffle()).first;
        var randomItem2 = (list..shuffle()).first;
        return Container(
          height: 120.0,
          width: 180.0,
          child: ElevatedButton(
            onPressed: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => DreamPage()))
            },
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        randomItem,
                        height: 120.0,
                        width: 100.0,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('T20 League'),
                      Text('vs'),
                      Row(
                        children: [
                          Icon(Icons.timer),
                          Text(
                            '01hr 08m 02s',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        randomItem2,
                        height: 110.0,
                        width: 90.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
