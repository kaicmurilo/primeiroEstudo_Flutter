import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estados Brasileiros',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Random Estados Brasileiros')
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List estados = [
    'Acre',
    'Alagoas',
    'Amazonas',
    'Amapá',
    'Bahia',
    'Ceará',
    'Distrito Federal',
    'Espírito Santo',
    'Goiás',
    'Maranhão',
    'Mato Grosso',
    'Mato Grosso do Sul',
    'Minas Gerais',
    'Pará',
    'Paraíba',
    'Paraná',
    'Pernambuco',
    'Piaui',
    'Rio de Janeiro',
    'Rio Grande do Norte',
    'Rio Grande do Sul',
    'Rondônia',
    'Roraima',
    'Santa Catarina',
    'São Paulo',
    'Sergipe',
    'Tocantins'
  ];
  List<MaterialColor> cores = [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.pink,
    Colors.yellow,
    Colors.indigo
  ];

  String randomTexto = "";
  MaterialColor randomCor = Colors.blue;
  String image = "";

//  link para innfo https://brasilescola.uol.com.br/brasil/estados-brasil.htm
  void _atualizarTela() {
    setState(() {
      randomTexto = estados[new Random().nextInt(estados.length)];
      randomCor = cores[new Random().nextInt(cores.length)];

//      link para imagens código http://www.macoratti.net/19/07/flut_img1.htm
      if(randomTexto == 'Acre'){
        image = 'https://s2.static.brasilescola.uol.com.br/img/2019/08/bandeira-acre.jpg';
      }
      if(randomTexto == 'Amapá'){
        image = 'https://s4.static.brasilescola.uol.com.br/img/2019/08/bandeira-amapa.jpg';
      }
      if(randomTexto == 'Amazonas'){
        image = 'https://s3.static.brasilescola.uol.com.br/img/2019/08/bandeira-amazonas(1).jpg';
      }
      if(randomTexto == 'Pará'){
      image = 'https://s1.static.brasilescola.uol.com.br/img/2019/08/bandeira-para.jpg';
      }
      if(randomTexto == 'Rondônia'){
        image = 'https://s5.static.brasilescola.uol.com.br/img/2019/08/bandeira-rondonia.jpg';
      }
      if(randomTexto == 'Roraima'){
        image = 'https://s3.static.brasilescola.uol.com.br/img/2019/08/bandeira-roraima.jpg';
      }
      if(randomTexto == 'Tocantins'){
        image = 'https://s2.static.brasilescola.uol.com.br/img/2019/08/bandeira-tocantins.jpg';
      }
      if(randomTexto == 'Maranhão'){
        image = 'https://s4.static.brasilescola.uol.com.br/img/2019/08/bandeira-maranhao.jpg';
      }
      if(randomTexto == 'Piaui'){
        image = 'https://s4.static.brasilescola.uol.com.br/img/2019/08/bandeira-piaui.jpg';
      }
      if(randomTexto == 'Ceará'){
        image = 'https://s5.static.brasilescola.uol.com.br/img/2019/08/bandeira-ceara.jpg';
      }
      if(randomTexto == 'Rio Grande do Norte'){
        image = 'https://s2.static.brasilescola.uol.com.br/img/2019/08/bandeira-rio-grande-do-norte.jpg';
      }
      if(randomTexto == 'Paraíba'){
        image = 'https://s1.static.brasilescola.uol.com.br/img/2019/08/bandeira-paraiba.jpg';
      }
      if(randomTexto == 'Pernambuco'){
        image = 'https://s2.static.brasilescola.uol.com.br/img/2019/08/bandeira-pernambuco.jpg';
      }
      if(randomTexto == 'Alagoas'){
        image = 'https://s3.static.brasilescola.uol.com.br/img/2019/08/bandeira-alagoas.jpg';
      }
      if(randomTexto == 'Sergipe'){
        image = 'https://s1.static.brasilescola.uol.com.br/img/2019/08/bandeira-sergipe.jpg';
      }
      if(randomTexto == "Bahia"){
        image = 'https://s3.static.brasilescola.uol.com.br/img/2019/08/bandeira-bahia.jpg';
      }
      if(randomTexto == "Goiás"){
        image = 'https://s3.static.brasilescola.uol.com.br/img/2019/08/bandeira-goias.jpg';
      }
      if(randomTexto =="Mato Grosso"){
        image = 'https://s2.static.brasilescola.uol.com.br/img/2019/08/bandeira-mato-grosso.jpg';
      }
      if(randomTexto == "Mato Grosso do Sul"){
        image = 'https://s3.static.brasilescola.uol.com.br/img/2019/08/bandeira-mato-grosso-do-sul.jpg';
      }
      if(randomTexto == "Distrito Federal"){
        image = 'https://s3.static.brasilescola.uol.com.br/img/2019/08/bandeira-distrito-federal.jpg';
      }
      if(randomTexto == "Espírito Santo"){
        image = 'https://s5.static.brasilescola.uol.com.br/img/2019/08/bandeira-espirito-santo.jpg';
      }
      if(randomTexto == "Minas Gerais"){
        image = 'https://s5.static.brasilescola.uol.com.br/img/2019/08/bandeira-minas-gerais.jpg';
      }
      if(randomTexto == "Rio de Janeiro"){
        image = 'https://s2.static.brasilescola.uol.com.br/img/2019/08/bandeira-rio-de-janeiro.jpg';
      }
      if(randomTexto == "São Paulo"){
        image = 'https://s1.static.brasilescola.uol.com.br/img/2019/08/bandeira-sao-paulo.jpg';
      }
      if(randomTexto == "Santa Catarina"){
        image = 'https://s3.static.brasilescola.uol.com.br/img/2019/08/bandeira-santa-catarina.jpg';
      }
      if(randomTexto == "Paraná"){
        image = 'https://s3.static.brasilescola.uol.com.br/img/2019/08/bandeira-parana.jpg';
      }
      if(randomTexto == "Rio Grande do Sul"){
        image = 'https://s1.static.brasilescola.uol.com.br/img/2019/08/bandeira-rio-grande-do-sul.jpg';
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: randomCor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: _atualizarTela,
              color: randomCor,
              child: Text('$randomTexto'),
            ),
            Image.network(image)
//            Text(
//              '$randomTexto',
//              style: Theme.of(context).textTheme.display1,
//            ),
          ],
        ),
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
