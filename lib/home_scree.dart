import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Home Page"), Icon(Icons.add)],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.grey, width: 4)),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundImage: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2016/02/18/18/37/puppy-1207816_1280.jpg"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          bottom: 18,
                          child: Icon(Icons.add_circle_outline_outlined))
                    ],
                  ),
                  StoryCard(
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2017/09/25/13/12/puppy-2785074_1280.jpg',
                    userName: 'user 1',
                  ),
                  StoryCard(
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2015/06/02/12/59/book-794978_1280.jpg',
                    userName: 'user 2',
                  ),
                  StoryCard(
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2017/09/25/13/12/puppy-2785074_1280.jpg',
                    userName: 'user 3',
                  ),
                  StoryCard(
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2017/09/25/13/12/puppy-2785074_1280.jpg',
                    userName: 'user 4',
                  ),
                  StoryCard(
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2017/09/25/13/12/puppy-2785074_1280.jpg',
                    userName: 'user 5',
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class StoryCard extends StatelessWidget {
  const StoryCard({super.key, required this.imageUrl, required this.userName});
  final String imageUrl;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.red, width: 4)),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          Text(userName)
        ],
      ),
    );
  }
}
