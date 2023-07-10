import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

class Home extends StatefulWidget {
    const Home({Key? key}) : super(key: key);

    @override
    State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    String address = '';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar (
                title: const Text('Home'),
            ),
            body:
                // Column(  
                //     children: [
                //         SizedBox(
                //             height: 100,
                //             child: Center(child: Text(address)),
                //         ),
                        SizedBox(
                            // height: 500,
                            child: OpenStreetMapSearchAndPick(
                                        center: LatLong(18.9367, 72.8221),
                                        buttonColor: Colors.blue,
                                        buttonText: 'Set Current Location',
                                        onPicked: (pickedData) {
                                            setState(() {
                                                address = pickedData.address;
                                            });
                                            print(pickedData.latLong.latitude);
                                            print(pickedData.latLong.longitude);
                                            print(pickedData.address);
                                        }
                                    )
                        ),
                //     ]
                // )
        );
    }
}