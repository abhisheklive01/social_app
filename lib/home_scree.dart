import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey, width: 4)),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/02/18/18/37/puppy-1207816_1280.jpg"),
                        ),
                      ),
                    ),
                  ),
                  StoryCard(),
                  StoryCard(),
                  StoryCard(),
                  StoryCard(),
                  StoryCard(),
                  StoryCard(),
                  StoryCard(),
                  StoryCard(),
                ],
              ),
            ),
          ],
        ));
  }
}

class StoryCard extends StatelessWidget {
  const StoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.red, width: 4)),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2019/08/19/07/45/corgi-4415649_1280.jpg"),
          ),
        ),
      ),
    );
  }
}
