//13.1 -  W.A.P. Design Movie Poster Ul using GridView, Card, Image. (A) [GridView.builder]

import 'package:flutter/material.dart';

class ThirteenOne extends StatelessWidget {
  ThirteenOne({super.key});

  final List<Map<String, String>> movie = [
    {"name": "Daredevil: Born Again", "image": "assets/images/daredevil.jpg"},
    {"name": "Ballerina", "image": "assets/images/ballerina.jpg"},
    {"name": "Iron Heart", "image": "assets/images/ironheart.jpg"},
    {"name": "The Boys", "image": "assets/images/the-boys.png"},
    {"name": "Stranger Things", "image": "assets/images/stranger.jpg"},
    {"name": "Godzilla vs Kong", "image": "assets/images/godzilla.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Practical - 13 (01) Movie Poster UI")),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: movie.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            var item = movie[index];
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 7,
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                      child: Image.asset(
                        item["image"]!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          item["name"]!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
