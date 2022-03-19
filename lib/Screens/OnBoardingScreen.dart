import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final data = [
    ItemData(
      title: "TITLE-1",
      subtitle: " Content 1 ",
      image: const AssetImage("assets/images/image-2.png"),
      backgroundColor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Colors.amber,
      subtitleColor: Colors.white,
      background: Lottie.network(
          'https://assets2.lottiefiles.com/packages/lf20_bq485nmk.json'),
    ),
    ItemData(
      title: "TITLE-2",
      subtitle: "Content 2.",
      image: const AssetImage("assets/images/image-3.png"),
      backgroundColor: Colors.white,
      titleColor: Colors.purple,
      subtitleColor: const Color.fromRGBO(0, 10, 56, 1),
      background: Lottie.network(
          'https://assets2.lottiefiles.com/packages/lf20_bq485nmk.json'),
    ),
    ItemData(
      title: "TITLE-3",
      subtitle: "Content 3",
      image: const AssetImage("assets/images/image-4.png"),
      backgroundColor: const Color.fromRGBO(71, 59, 117, 1),
      titleColor: Colors.orange.shade600,
      subtitleColor: Colors.white,
      background: Lottie.network(
          'https://assets2.lottiefiles.com/packages/lf20_bq485nmk.json'),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        radius: 30,
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index, double value) {
          return ItemWidget(data: data[index]);
        },
      ),
    );
  }
}

class ItemData {
  final String title;
  final String subtitle;
  final ImageProvider image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;
  final Widget? background;

  ItemData({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,
    this.background,
  });
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    required this.data,
    Key? key,
  }) : super(key: key);

  final ItemData data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(

          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              Flexible(
                flex: 20,
                child: Image(image: data.image),
              ),

              const Spacer(flex: 1),

              Text(
                data.title,
                style: GoogleFonts.roboto(  color: data.titleColor,
                  fontSize:32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
                maxLines: 1,),



              const Spacer(flex: 2),

              Text(
                data.subtitle,
                style: TextStyle(
                  color: data.subtitleColor,
                  fontStyle: FontStyle.italic,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),

             // SPACER FOR THE CONCENTRIC RADIUS
              const Spacer(flex: 15),
            ],
          ),
        ),
      ],
    );
  }
}