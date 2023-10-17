import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    late AssetImage image1,image2,image3, image4;
    image1 = const AssetImage("assets/headerEducationPage.jpeg");
    image2 = const AssetImage("assets/bddLogo.png");
    image3 = const AssetImage("assets/idCampLogo.png");
    image4 = const AssetImage("assets/juaraAndroidLogo.png");
    precacheImage(image1, context);
    precacheImage(image2, context);
    precacheImage(image3, context);
    precacheImage(image4, context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Image(image: image1),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text("About My Education", textAlign: TextAlign.justify, style: TextStyle(fontFamily: "UbuntuBold",color: Colors.white, fontSize: 26.0),),
                const SizedBox(
                  height: 10,
                ),
                const Text("I graduated from the Informatics Engineering Department, Al-Falah University, Surabaya, Indonesia. I have studied logic, algorithms and RDBMS. I have also participated in several training programs organized by the Indonesian government and the private sector. The following are some of the training I have attended :",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontFamily: "UbuntuRegular",color: Colors.white, fontSize: 16.0),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      const ListTile(
                        leading: Icon(Icons.android),
                        title: Text("Baparekraf Developer Day"),
                        subtitle: Text("Android Developer",),
                      ),
                      Image(image: image2),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Baparekraf Developer Day aka BDD is an event organized by the Ministry of Tourism and Creative Economy. This event is in collaboration with Dicoding as a Google Developers Authorized Training Partner. The material I have studied are Kotlin and Android Application Programming.",),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      const ListTile(
                        leading: Icon(Icons.mobile_friendly),
                        title: Text("ID Camp"),
                        subtitle: Text("Multi-Platform App Developer",),
                      ),
                      Image(image: image3),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("ID Camp is an event organized by the Indosat Ooredoo Hutchison company. This event is in collaboration with Dicoding as a Google Developers Authorized Training Partner. The materials I have studied are Dart and Flutter.",),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      const ListTile(
                        leading: Icon(Icons.android),
                        title: Text("Juara Android"),
                        subtitle: Text("Jetpack Compose",),
                      ),
                      Image(image: image4),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Android Champion is an event organized by Google. The materials I have studied are Kotlin and Jetpack Compose.",),
                      ),
                    ],
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
