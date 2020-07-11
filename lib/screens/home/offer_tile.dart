import 'package:flutter/material.dart';
import 'package:locationapp/models/offer.dart';

class OfferTile extends StatelessWidget {

  final Offer offer;
  OfferTile({ this.offer });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.brown[offer.price],
          ),
          title: Text(offer.title),
          subtitle: Text('Takes ${offer.description} sugar(s)'),
        ),
      ),
    );
  }
}