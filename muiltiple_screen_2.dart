import 'package:flutter/material.dart';
import 'forecast.dart';

class ChildScreen2 extends StatelessWidget {
  const ChildScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(173, 216, 230, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(173, 216, 230, 1),
        centerTitle: true,
        title: const Text(
          'WEATHER',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 380,
              width: double.infinity,
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    Text(
                      'Dhaka',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.cloud,
                      size: 200,
                    ),
                    Text(
                      '28°C',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Card(
                elevation: 10,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ForeCast(
                          icon: Icons.cloud,
                          time: '7:00',
                          temp: ' 31°',
                        ),
                        ForeCast(
                          icon: Icons.cloud,
                          time: '8:00',
                          temp: ' 30°',
                        ),
                        ForeCast(
                          icon: Icons.cloud,
                          time: '9:00',
                          temp: ' 29°',
                        ),
                        ForeCast(
                          icon: Icons.cloud,
                          time: '10:00',
                          temp: ' 29°',
                        ),
                        ForeCast(
                          icon: Icons.cloud,
                          time: '11:00',
                          temp: ' 27°',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
