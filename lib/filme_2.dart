import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class filmeTwo extends StatefulWidget {
  const filmeTwo({Key? key}) : super(key: key);

  @override
  State<filmeTwo> createState() => _filmeTwoState();
}

class _filmeTwoState extends State<filmeTwo> {

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
                    Image.network('https://br.web.img3.acsta.net/medias/nmedia/18/90/95/96/20122166.jpg'),
                    Text('Club da Luta', style: TextStyle(fontSize: 60),),
                    Text('Jack (Edward Norton) é um executivo jovem, trabalha como investigador de seguros, mora confortavelmente, mas ele está ficando cada vez mais insatisfeito com sua vida medíocre. Para piorar ele está enfrentando uma terrível crise de insônia, até que encontra uma cura inusitada para o sua falta de sono ao frequentar grupos de auto-ajuda. Nesses encontros ele passa a conviver com pessoas problemáticas como a viciada Marla Singer (Helena Bonham Carter) e a conhecer estranhos como Tyler Durden (Brad Pitt). Misterioso e cheio de ideias, Tyler apresenta para Jack um grupo secreto que se encontra para extravasar suas angústias e tensões através de violentos combates corporais.', style: TextStyle(fontSize: 20),),
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
