import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 1, 27, 66),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            "Download",
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "List Movie",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white60,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Downloading",
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.grey,
                    height: 3,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.blue,
                    height: 3,
                  )),
                ],
              ),
              const SizedBox(height: 30),
              downloading(),
              const SizedBox(height: 15),
              downloading(),
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
                  onPressed: () {
                    Navigator.pushNamed(context, "/seacond");
                  },
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey[400],
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
                  onPressed: () {},
                  icon: const Icon(
                    Icons.download,
                    color: Colors.blue,
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

Widget downloading() {
  return Container(
    height: 190,
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(69, 91, 109, 202)),
    child: Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            width: 140,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            height: double.infinity,
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              "assets/deadpool.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Deadpool and\nRosomaxa",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(
                height: 50,
                width: 100,
                child: Image.asset("assets/marvel.png"),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 80,
                            height: 3,
                            color: Colors.blue,
                          ),
                          Container(
                            width: 80,
                            height: 3,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "923Kb/s",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 18),
                          Text(
                            "600Mb/",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "1.2Gb",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 7),
                  Icon(
                    Icons.pause_circle,
                    size: 30,
                    color: Colors.grey[300],
                  ),
                  PopupMenuButton(itemBuilder: (ctx) {
                    return [
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text("Re Download"),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text("Details"),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text("Delate"),
                      ),
                    ];
                  }),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}
