import 'package:flutter/material.dart';
import 'package:myapp/app_scaffold.dart';

class FlashCards extends StatelessWidget {
  static const String route = 'flash_cards';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: ListView(
        children: <FlashCard>[
          FlashCard(
            front: 'Card Front',
            back: 'Card Back',
          ),
        ],
      ),
    );
  }
}

class FlashCard extends StatefulWidget {
  const FlashCard({
    Key key,
    this.front,
    this.back,
  }) : super(key: key);

  final String front;
  final String back;

  @override
  _FlashCardState createState() => _FlashCardState();
}

class _FlashCardState extends State<FlashCard> {
  bool _flipped = false;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      child: InkWell(
        splashColor: Theme.of(context).accentColor,
        onTap: !this._flipped ? this._flipCard : null,
        child: Container(
          height: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    this._flipped ? widget.back : widget.front,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              if (this._flipped)
                ButtonBar(
                  children: [
                    FlatButton(
                      onPressed: null, // TODO accept onPressed handlers
                      child: Text('Correct'), // TODO accept button child
                    ),
                    FlatButton(
                      onPressed: null,
                      child: Text('Incorrect'),
                    )
                  ],
                ),
            ],
          ),
        ),
      ),
    ));
  }

  void _flipCard() {
    setState(() {
      _flipped = true;
    });
  }
}
