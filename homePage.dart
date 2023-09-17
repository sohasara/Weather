import 'package:alarm/more_cities.dart';
import 'package:alarm/muiltiple_screen_2.dart';
import 'package:alarm/mulitiple_Screen_1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(173, 216, 230, 1),
        title: const Text(
          'Search for city',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'search',
                  hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  filled: true,
                  //fillColor: Color.fromRGBO(130, 213, 250, 1),
                  fillColor: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 250,
                      width: 190,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChildScreen(),
                            ),
                          );
                        },
                        child: const Card(
                          elevation: 10,
                          color: Color.fromRGBO(173, 216, 230, 1),
                          child: Column(
                            children: [
                              Text('Mirpur',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Icon(
                                Icons.cloud,
                                size: 100,
                              ),
                              Text('29°C',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text('wind',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 250,
                      width: 190,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChildScreen2(),
                            ),
                          );
                        },
                        child: const Card(
                          elevation: 10,
                          color: Color.fromRGBO(173, 216, 230, 1),
                          child: Column(
                            children: [
                              Text('Dhaka',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Icon(
                                Icons.cloud,
                                size: 100,
                              ),
                              Text('28°C',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                              Text('Thunder',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
            width: 130,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CityName(),
                  ),
                );
              },
              child: const Card(
                elevation: 10,
                color: Color.fromRGBO(173, 216, 230, 1),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'More cities',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 180,
              width: 300,
              child: Card(
                elevation: 10,
                color: Color.fromRGBO(173, 216, 230, 1),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'wind',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '8Km/h',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text(
                        'Humidity',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '30%',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
