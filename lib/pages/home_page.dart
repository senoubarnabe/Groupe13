import 'package:flutter/material.dart';
import '../models/artist.dart';
import '../models/friends.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

   List<User> users = [
     User(name: 'Votre Story', imageUrl: 'assets/images/images.jpg'),
     User(name: 'Iovann', imageUrl: 'assets/images/image1.jpg'),
     User(name: 'Timothée', imageUrl: 'assets/images/image2.jpg'),
     User(name: 'Alexis',  imageUrl: 'assets/images/image3.jpg'),
     User(name: 'Amance', imageUrl: 'assets/images/image4.jpg'),
     User(name: 'Fortuné', imageUrl: 'assets/images/image5.jpg'),
   ];
   List<Artist> artists = [
     Artist(name: "Ninho", song: "Filon", image: "assets/images/ninho.jpg"),
     Artist(name: "Tiakola", song: "Parapluie", image: "assets/images/black.jpg"),
     Artist(name: "Joé Dwèt Filé", song: "Abimé", image: "assets/images/mignon.jpg"),
     Artist(name: "Celine Dion", song: "Pour que tu m'aimes encore", image: "assets/images/violet.jpg"),
     Artist(name: "Gazo", song: "Die", image: "assets/images/suel.jpg"),
   ];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.add_box_outlined, size: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset("assets/images/Instagram.png", width: 150),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.brightness_5),
                  Icon(Icons.light_mode),
                  Icon(Icons.message),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:Row(
              children: users.map((user) => Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('${user.imageUrl}'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("${user.name}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                ],
              ),
              ).toList(),
            ),
          ),
          Column(
            children: artists.map((artist) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(maxRadius: 30, backgroundImage: AssetImage("${artist.image}"),),
                  title: Text("${artist.name}", style: TextStyle(fontWeight: FontWeight.w500)),
                  subtitle: Text("${artist.song}"),
                ),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("${artist.image}"),
                      fit: BoxFit.cover,
                    ),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text("Aimé par 22 peersonnes"),
                      Text("Voir les commentaires"),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/images.jpeg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Column(
                          children: [
                            Text("Ajouter un commentaire"),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(Icons.send),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,)
              ],
            )).toList()
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.home, size: 40),
            Icon(Icons.search, size: 40),
            Icon(Icons.ondemand_video_outlined, size: 40),
            Icon(Icons.favorite_border, size: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/image4.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
