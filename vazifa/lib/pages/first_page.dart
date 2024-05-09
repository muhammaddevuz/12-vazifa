import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 1, 27, 66),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
                child: Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[350]),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white60,
                          size: 40,
                        ),
                        Text(
                          "  Search by title, genre, actor",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 30),
                child: Text(
                  "Recent Searches",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white60,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    categories("Marvel"),
                    categories("Captain America"),
                    categories("Captain Marvel"),
                    categories("Thor"),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 10, bottom: 20),
                child: Text(
                  "Popular",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white60,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [for (var i = 0; i < 5; i++) posters()],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 10, bottom: 20),
                child: Text(
                  "Recomendations For You",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white60,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [for (var i = 0; i < 5; i++) posters()],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 6, 45, 104)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){}, icon: const Icon(
                  Icons.home_filled,
                  color: Colors.blue,
                  size: 40,
                ),),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/seacond");
                  },
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey[400],
                    size: 40,
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(
                  Icons.bookmark,
                  color: Colors.grey[400],
                  size: 40,
                ),),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/thirdpage");
                  },
                  icon: Icon(
                    Icons.download,
                    color: Colors.grey[400],
                    size: 40,
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(
                  Icons.person,
                  color: Colors.grey[400],
                  size: 40,
                ),)
              ],
            ),
          ),
        ));
  }
}

Widget categories(String text) {
  return Chip(
      color: const MaterialStatePropertyAll(Color.fromARGB(255, 6, 45, 104)),
      avatar: const Icon(
        CupertinoIcons.clock,
        size: 27,
        color: Colors.blue,
      ),
      label: Text(
        text,
        style: const TextStyle(
            color: Colors.blue, fontSize: 22, fontWeight: FontWeight.w600),
      ));
}

Widget posters() {
  return Row(
    children: [
      Container(
        width: 160,
        height: 230,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        clipBehavior: Clip.hardEdge,
        child: Image.asset(
          "assets/deadpool.jpg",
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(width: 15)
    ],
  );
}
