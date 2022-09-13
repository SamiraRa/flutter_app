import 'package:flutter/material.dart';

class GamesListScreen extends StatefulWidget {
  const GamesListScreen({super.key});

  @override
  State<GamesListScreen> createState() => _GamesListScreenState();
}

class _GamesListScreenState extends State<GamesListScreen> {
  List<Map<String, String>> images = [
    {"image": "assets/images/assassins-creed-1.jpg", "name": "Assasin's Creed"},
    {"image": "assets/images/AC-2.jpg", "name": "Assasin's Creed II"},
    {
      "image": "assets/images/brotherhood.jpg",
      "name": "Assasin's Creed: Brotherhood"
    },
    {
      "image": "assets/images/Revelations.png",
      "name": "Assasin's Creed: Revelations"
    },
    {"image": "assets/images/AC3.jpg", "name": "Assasin's Creed III"},
    {
      "image": "assets/images/black_flag.jpg",
      "name": "Assasin's Creed IV: Black Flag"
    },
    {"image": "assets/images/Rogue.jpg", "name": "Assasin's Creed: Rogue"},
    {"image": "assets/images/Unity.jpg", "name": "Assasin's Creed: Unity"},
    {
      "image": "assets/images/Syndicate.jpg",
      "name": "Assasin's Creed: Syndicate"
    },
    {"image": "assets/images/Origins.jpg", "name": "Assasin's Creed: Origins"},
    {"image": "assets/images/Odyssey.jpg", "name": "Assasin's Creed: Odyssey"},
    {
      "image": "assets/images/Valhalla.jpeg",
      "name": "Assasin's Creed: Valhalla"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        centerTitle: true,
        title: const Text("Assasin's Creed Series"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.13,
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.03,
                                ),
                                InkWell(
                                  onTap: () => showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          content: SizedBox(
                                            width: screenWidth * 0.3,
                                            height: screenHeight / 3,
                                            child: Image.asset(images[index]
                                                    ['image']
                                                .toString()),
                                          ),
                                        );
                                      }),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 16),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Image.asset(
                                        images[index]['image'].toString(),
                                        fit: BoxFit.cover,
                                        width: 50,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.5,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.03,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          images[index]['name'].toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Expanded(
                                        flex: 2,
                                        child: Text(
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum ",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
