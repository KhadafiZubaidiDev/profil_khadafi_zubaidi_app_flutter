import 'package:flutter/material.dart';

class JobSection extends StatelessWidget {
  const JobSection({super.key});

  @override
  Widget build(BuildContext context) {
    late AssetImage image1,image2;
    image1 = const AssetImage("assets/headerJobPage.jpg");
    image2 = const AssetImage("assets/map1.png");
    precacheImage(image1, context);
    precacheImage(image2, context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Image(image: image1),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text("About My Work", textAlign: TextAlign.justify, style: TextStyle(fontFamily: "UbuntuBold",color: Colors.white, fontSize: 26.0),),
                const SizedBox(
                  height: 10,
                ),
                const Text("Currently I have a career as a government official in West Sumbawa Regency, West Nusa Tenggara Province, Indonesia. I work in the field of Statistics. My job is to prepare work plans, coordinate data collection, data analysis and information dissemination.",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontFamily: "UbuntuRegular",color: Colors.white, fontSize: 16.0),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text("I also often create data visualizations using the Tableau application combined with GeoJSON data. The visualization of the resulting data will be one of the leadership's considerations when creating a policy. Here are some data visualizations that I have created :",
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
                        leading: Icon(Icons.map),
                        title: Text("Data Visualization"),
                        subtitle: Text("GeoJSON and Tableau",),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Number of drinking water networks based on sub-districts in West Sumbawa district. I use a combination of data from Google Sheet and Geo JSON to manage using the Tableau application",),
                      ),
                      Image(image: image2),
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
