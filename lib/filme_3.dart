import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class filmeThree extends StatefulWidget {
  const filmeThree({Key? key}) : super(key: key);

  @override
  State<filmeThree> createState() => _filmeThreeState();
}

class _filmeThreeState extends State<filmeThree> {

  final Uri _url = Uri.parse('https://wa.me/+5569993576167');
  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

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
                    Image.network('https://br.web.img3.acsta.net/pictures/14/05/22/20/00/155413.jpg'),
                    Text('Amenesia', style: TextStyle(fontSize: 60),),
                    Text('Um ladrão ataca um casal, terminando por matar a mulher e deixando o homem à beira da morte. Porém, ele sobrevive e a partir de então passa a sofrer de uma doença que o impede de gravar na memória fatos recentes, o que faz com que ele esqueça por completo algo que acontece poucos instantes antes. A partir de então ele parte em uma jornada pessoal a fim de descobrir o assassino de sua mulher para poder vingá-la.', style: TextStyle(fontSize: 20),),
                    ElevatedButton.icon(onPressed: _launchUrl, icon: Icon(Icons.start), label: Text('Alugue'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
