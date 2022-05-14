import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class filmeOne extends StatefulWidget {
  const filmeOne({Key? key}) : super(key: key);

  @override
  State<filmeOne> createState() => _filmeOneState();
}

class _filmeOneState extends State<filmeOne> {

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
                    Image.network('https://upload.wikimedia.org/wikipedia/pt/6/6d/Kill_Bill_poster.jpg'),
                    Text('Kill Bill', style: TextStyle(fontSize: 60),),
                    Text('A Noiva (Uma Thurman) é uma perigosa assassina que trabalhava em um grupo, liderado por Bill (David Carradine), composto principalmente por mulheres. Grávida, ela decide escapar dessa vida de violência e decide se casar, mas no dia da cerimônia seus companheiros de trabalho se voltam contra ela, quase a matando. Após cinco anos em coma, ela desperta sem um bebê e com um único desejo: vingança. A Noiva decide procurar, e matar, as cinco pessoas que destruiram o seu futuro, começando pelas perigosas assassinas Vernita Green (Vivica A. Fox) e O-Ren Ishii (Lucy Liu).', style: TextStyle(fontSize: 20),),
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
