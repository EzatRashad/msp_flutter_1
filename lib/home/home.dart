import 'package:flutter/material.dart';
import 'package:msp_flutter_1/home/widgets/appBar.dart';
import 'package:msp_flutter_1/home/widgets/item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> titles = [
    "مجله السياسه",
    "مجله التكنولوجيا",
    "مجله الرياضه",
    "مجله العلوم",
    "مجله السياسه",
    "مجله التكنولوجيا",
    "مجله الرياضه",
    "مجله العلوم",
    "مجله السياسه",
    "مجله التكنولوجيا",
    "مجله الرياضه",
    "مجله العلوم",
    "مجله السياسه",
    "مجله التكنولوجيا",
    "مجله الرياضه",
    "مجله العلوم",
  ];

  List<String> images = [
    "assets/images/business.jpg",
    "assets/images/technology.jpeg",
    "assets/images/sports.jpg",
    "assets/images/science.jpg",
    "assets/images/business.jpg",
    "assets/images/technology.jpeg",
    "assets/images/sports.jpg",
    "assets/images/science.jpg",
    "assets/images/business.jpg",
    "assets/images/technology.jpeg",
    "assets/images/sports.jpg",
    "assets/images/science.jpg",
    "assets/images/business.jpg",
    "assets/images/technology.jpeg",
    "assets/images/sports.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(child: MyAppBar()),
              SliverGrid.builder(
                  itemCount: images.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 0),
                  itemBuilder: (context, index) {
                    return Item(
                      image: images[index],
                      title: titles[index],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
