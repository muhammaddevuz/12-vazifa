import 'package:flutter/material.dart';

class SeaconPage extends StatelessWidget {
  const SeaconPage({super.key});

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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search,
                          color: Colors.white60,
                          size: 40,
                        ),
                        Text(
                          "  Comedy",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.grey[500],
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
                  "Results for Comedy",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white60,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  children: [for (var i = 0; i < 15; i++) posters()],
                ),
              ),
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
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/first");
                  },
                  icon: Icon(
                    Icons.home_filled,
                    color: Colors.grey[400],
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.blue,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark,
                    color: Colors.grey[400],
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/third");
                  },
                  icon: Icon(
                    Icons.download,
                    color: Colors.grey[400],
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey[400],
                    size: 40,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

Widget posters() {
  return Column(
    children: [
      Container(
        width: 130,
        height: 190,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        clipBehavior: Clip.hardEdge,
        child: Image.asset(
          "assets/deadpool.jpg",
          fit: BoxFit.cover,
        ),
      ),
    ],
  );
}
