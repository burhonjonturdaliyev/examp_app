import 'package:examp_app/model/news_model.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  Page1({super.key});

  final List<NewsModel> model = [
    NewsModel(
        title: "Breaking News",
        description:
            " wefweoufgbwerig erwig ewi vwekjvwei vgweoweifgwej fwef weg weigwe gkwe gjkhwe fg"),
    NewsModel(
        title: "Breaking News",
        description:
            " wefweoufgbwerig erwig ewi vwekjvwei vgweoweifgwej fwef weg weigwe gkwe gjkhwe fg"),
    NewsModel(
        title: "Breaking News",
        description:
            " wefweoufgbwerig erwig ewi vwekjvwei vgweoweifgwej fwef weg weigwe gkwe gjkhwe fg"),
    NewsModel(
        title: "Breaking News",
        description:
            " wefweoufgbwerig erwig ewi vwekjvwei vgweoweifgwej fwef weg weigwe gkwe gjkhwe fg"),
    NewsModel(
        title: "Breaking News",
        description:
            " wefweoufgbwerig erwig ewi vwekjvwei vgweoweifgwej fwef weg weigwe gkwe gjkhwe fg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        title: const Text(
          "News App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: model.length,
          itemBuilder: (context, index) => design(model[index])),
    );
  }

  Widget design(NewsModel model) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: double.infinity,
      child: Column(children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/rasm.jpg"), fit: BoxFit.fitWidth)),
        ),
        const SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            model.title,
            textAlign: TextAlign.start,
            style: const TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            model.description,
            textAlign: TextAlign.start,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        )
      ]),
    );
  }
}
