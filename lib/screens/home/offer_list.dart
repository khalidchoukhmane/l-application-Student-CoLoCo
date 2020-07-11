import 'package:flutter/material.dart';
import 'package:locationapp/models/offer.dart';
import 'package:provider/provider.dart';

import 'offer_tile.dart';

class OfferList extends StatefulWidget {
  @override
  _OfferListState createState() => _OfferListState();
}

class _OfferListState extends State<OfferList> {
  @override
  Widget build(BuildContext context) {

    final offers = Provider.of<List<Offer>>(context);

    return ListView.builder(
      itemCount: offers.length,
      itemBuilder: (context, index) {
        return OfferTile(offer: offers[index]);
      },
    );
  }
}
