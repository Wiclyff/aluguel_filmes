import 'package:flutter/material.dart';

class CataogoScreen extends StatefulWidget {
  const CataogoScreen({Key? key}) : super(key: key);

  @override
  State<CataogoScreen> createState() => _CataogoScreenState();
}

class _CataogoScreenState extends State<CataogoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catálogo de Filmes'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: [
                    Image.network('https://upload.wikimedia.org/wikipedia/pt/6/6d/Kill_Bill_poster.jpg'),
                      Text('Kill Bill', style: TextStyle(fontSize: 40),),
                    ElevatedButton.icon(onPressed: (){Navigator.pushNamed(context, '/filme_1');}, icon: Icon(Icons.start), label: Text('Sinopse '))
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Image.network('https://br.web.img3.acsta.net/medias/nmedia/18/90/95/96/20122166.jpg'),
                    Text('Club da Luta', style: TextStyle(fontSize: 40),),
                    ElevatedButton.icon(onPressed: (){Navigator.pushNamed(context, '/filme_2');}, icon: Icon(Icons.start), label: Text('Sinopse '))
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Image.network('https://br.web.img3.acsta.net/pictures/14/05/22/20/00/155413.jpg'),
                    Text('Amenesia', style: TextStyle(fontSize: 40),),
                    ElevatedButton.icon(onPressed: (){Navigator.pushNamed(context, '/filme_3');}, icon: Icon(Icons.start), label: Text('Sinopse '))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
