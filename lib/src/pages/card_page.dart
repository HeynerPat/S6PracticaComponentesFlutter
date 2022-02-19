import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.green),
            title: Text('Soy el titulo de esta Tarjeta'),
            subtitle: Text(
                'Aqui estamos con la descripcion de la tarjeta para ver la idea de lo que se quiere mostrar en el video'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              TextButton(
                child: Text('Ok'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://th.bing.com/th/id/R.e8c2326f2c8368bb3137720155f6b8a4?rik=Cy6w6SA5uSG4iw&riu=http%3a%2f%2fwallup.net%2fwp-content%2fuploads%2f2016%2f03%2f10%2f340008-nature-landscape-mountains-sunset-clouds-sunlight-pond-grass-sky-Italy.jpg&ehk=mn4qSabd3cnZhTA1oLk7XJNzQLzX5dwQhK3jQAKwF38%3d&risl=&pid=ImgRaw&r=0'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          /*Image(
            image: NetworkImage(
                'https://th.bing.com/th/id/R.e8c2326f2c8368bb3137720155f6b8a4?rik=Cy6w6SA5uSG4iw&riu=http%3a%2f%2fwallup.net%2fwp-content%2fuploads%2f2016%2f03%2f10%2f340008-nature-landscape-mountains-sunset-clouds-sunlight-pond-grass-sky-Italy.jpg&ehk=mn4qSabd3cnZhTA1oLk7XJNzQLzX5dwQhK3jQAKwF38%3d&risl=&pid=ImgRaw&r=0'),
          ), */
          Container(padding: EdgeInsets.all(10.0), child: Text('No tengo idea'))
        ],
      ),
    );
  }
}
