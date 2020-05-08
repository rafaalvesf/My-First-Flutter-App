import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'Avaliador de Jogos'),
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
  Color _colorOn = Colors.orangeAccent;
  Color _colorOff = Colors.grey;
  Color _starColor1;
  Color _starColor2;
  Color _starColor3;
  Color _starColor4;
  Color _starColor5;

  _MyHomePageState() {
    _starColor1 = _colorOff;
    _starColor2 = _colorOff;
    _starColor3 = _colorOff;
    _starColor4 = _colorOff;
    _starColor5 = _colorOff;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset('lib/assets/images/cover.jpg'),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'World of Warcraft',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.star,
                        color: _starColor1,
                      ),
                      onPressed: () {
                        setState(() {
                          _starColor1 = (_starColor1 == _colorOff)
                              ? _colorOn
                              : _colorOff;

                          if (_starColor1 == _colorOff) {
                            _starColor2 = _colorOff;
                            _starColor3 = _colorOff;
                            _starColor4 = _colorOff;
                            _starColor5 = _colorOff;
                          }
                        });
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.star,
                        color: _starColor2,
                      ),
                      onPressed: () {
                        setState(() {
                          _starColor2 = (_starColor2 == _colorOff)
                              ? _colorOn
                              : _colorOff;

                          if (_starColor2 == _colorOn) {
                            _starColor1 = _starColor2;
                          }

                          if (_starColor2 == _colorOff) {
                            _starColor3 = _colorOff;
                            _starColor4 = _colorOff;
                            _starColor5 = _colorOff;
                          }
                        });
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.star,
                        color: _starColor3,
                      ),
                      onPressed: () {
                        setState(() {
                          _starColor3 = (_starColor3 == _colorOff)
                              ? _colorOn
                              : _colorOff;

                          if (_starColor3 == _colorOn) {
                            _starColor1 = _starColor3;
                            _starColor2 = _starColor3;
                          }

                          if (_starColor3 == _colorOff) {
                            _starColor4 = _colorOff;
                            _starColor5 = _colorOff;
                          }
                        });
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.star,
                        color: _starColor4,
                      ),
                      onPressed: () {
                        setState(() {
                          _starColor4 = (_starColor4 == _colorOff)
                              ? _colorOn
                              : _colorOff;

                          if (_starColor4 == _colorOn) {
                            _starColor1 = _starColor4;
                            _starColor2 = _starColor4;
                            _starColor3 = _starColor4;
                          }

                          if (_starColor4 == _colorOff) {
                            _starColor5 = _colorOff;
                          }
                        });
                      }),
                  IconButton(
                      icon: Icon(
                        Icons.star,
                        color: _starColor5,
                      ),
                      onPressed: () {
                        setState(() {
                          _starColor5 = (_starColor5 == _colorOff)
                              ? _colorOn
                              : _colorOff;

                          if (_starColor5 == _colorOn) {
                            _starColor1 = _starColor5;
                            _starColor2 = _starColor5;
                            _starColor3 = _starColor5;
                            _starColor4 = _starColor5;
                          }
                        });
                      })
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Text(
                  'World of Warcraft é um jogo on-line do gênero MMORPG, desenvolvido e distribuído pela produtora Blizzard Entertainment e lançado em 2004. O jogo se passa no mundo fantástico de Azeroth, introduzido no primeiro jogo da série, Warcraft: Orcs & Humans, lançado em 1994.',
                  textAlign: TextAlign.justify,
                )),
          ],
        ),
      ),
    );
  }
}
