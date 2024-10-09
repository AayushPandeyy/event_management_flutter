import 'package:carousel_slider/carousel_slider.dart';
import 'package:event_management_flutter/widgets/common/EventTile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffdfdfd),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height * 0.3,
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://w0.peakpx.com/wallpaper/544/197/HD-wallpaper-circles-android-bubbles-colorful-colour-colourful-pattern.jpg"))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.menu)),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: const Center(
                                child: Icon(Icons.notifications),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Find the Trending Events",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                      const Text(
                        textAlign: TextAlign.center,
                        "Search through the amazing list of trending events !",
                        style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 243, 239, 239)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search events',
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors
                              .purple, // Customize the filter button color
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.tune, // The filter icon
                            color: Colors.white, // Icon color
                          ),
                          onPressed: () {
                            // Add filter action here
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Events",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text("See All")
                  ],
                ),
              ),
              CarouselSlider(items: const [
                EventTile(),
                EventTile(),
                EventTile(),
                EventTile(),
                EventTile()
              ], options: CarouselOptions(height: 300)),
            ],
          ),
        ),
      ),
    );
  }
}
