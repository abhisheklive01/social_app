import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: AppBar(
              backgroundColor: Color.fromARGB(
                  255, 131, 9, 86), // Specify the desired background color

              bottom: const TabBar(
                tabs: [
                  Text(
                    "Recommended",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "Applied",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "Applied",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              PageCard(),
              PageCard(),
              PageCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class PageCard extends StatelessWidget {
  const PageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 200, 240, 255),
      child: Column(
        children: [
          JobCard(),
          JobCard(),
        ],
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  const JobCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(top: 15, bottom: 15),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Software Quality Assurance Depart head",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Wipro Techologies",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Wipro Techologies",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 100,
              child: Column(children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.grey, width: 1)),
                ),
                Text("19 May'23")
              ]),
            )
          ],
        ));
  }
}
