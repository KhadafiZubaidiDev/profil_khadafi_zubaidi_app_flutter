import 'package:flutter/material.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    late AssetImage image1,image2,image3,image4,image5,image6,image7,image8,image9;
    image1 = const AssetImage("assets/headerHomePage.jpg");
    image2 = const AssetImage("assets/vpLogo.png");
    image3 = const AssetImage("assets/figmaLogo.png");
    image4 = const AssetImage("assets/laravelLogo.jpeg");
    image5 = const AssetImage("assets/flutterLogo.jpeg");
    image6 = const AssetImage("assets/tableauLogo.jpeg");
    image7 = const AssetImage("assets/tensorflowLogo.png");
    image8 = const AssetImage("assets/firebaseLogo.png");
    image9 = const AssetImage("assets/qGISLogo.png");
    precacheImage(image1, context);
    precacheImage(image2, context);
    precacheImage(image3, context);
    precacheImage(image4, context);
    precacheImage(image5, context);
    precacheImage(image6, context);
    precacheImage(image7, context);
    precacheImage(image8, context);
    precacheImage(image9, context);

    return SingleChildScrollView(
      child: Column(
        children: [
          Image(image: image1),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text("Welcome", textAlign: TextAlign.justify, style: TextStyle(fontFamily: "UbuntuBold",color: Colors.white, fontSize: 26.0),),
                const SizedBox(
                  height: 10,
                ),
                const Text("Computer Informatics Engineering graduate with more than twelve years of experience in developing web and mobile based applications. Work on applications starting from concept, design, coding and implementation. I am currently also studying Data Science and the use of Big Data. Someone who is interested in the development of information technology.",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontFamily: "UbuntuRegular",color: Colors.white, fontSize: 16.0),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(thickness: 0.5,
                  color: Colors.white,),
                const SizedBox(
                  height: 10,
                ),
                const Text("Tools", textAlign: TextAlign.justify, style: TextStyle(fontFamily: "UbuntuBold",color: Colors.white, fontSize: 26.0),),
                const SizedBox(
                  height: 10,
                ),
                const Text("Here are some tools that I often use to build an application :",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontFamily: "UbuntuRegular",color: Colors.white, fontSize: 16.0),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation:10,
                  child: ListTile(
                      leading: CircleAvatar(backgroundImage: image2,) ,
                      title: const Text("Visual Paradigm"),
                      subtitle: const Text("Business Process Engineering")
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation:10,
                  child: ListTile(
                      leading: CircleAvatar(backgroundImage: image3,) ,
                      title: const Text("Figma"),
                      subtitle: const Text("UI / UX Design")
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation:10,
                  child: ListTile(
                      leading: CircleAvatar(backgroundImage: image4,) ,
                      title: const Text("Laravel"),
                      subtitle: const Text("PHP Framework")
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation:10,
                  child: ListTile(
                      leading: CircleAvatar(backgroundImage: image5,) ,
                      title: const Text("Flutter"),
                      subtitle: const Text("Multiplatform Framework")
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation:10,
                  child: ListTile(
                      leading: CircleAvatar(backgroundImage: image6,) ,
                      title: const Text("Tableau"),
                      subtitle: const Text("Data Visualization")
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation:10,
                  child: ListTile(
                      leading: CircleAvatar(backgroundImage: image7,) ,
                      title: const Text("Tensor Flow"),
                      subtitle: const Text("Machine Learning")
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation:10,
                  child: ListTile(
                      leading: CircleAvatar(backgroundImage: image8,) ,
                      title: const Text("Firebase"),
                      subtitle: const Text("Google Database Tools")
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation:10,
                  child: ListTile(
                      leading: CircleAvatar(backgroundImage: image9,) ,
                      title: const Text("Quantum GIS"),
                      subtitle: const Text("Map Data Processing")
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
