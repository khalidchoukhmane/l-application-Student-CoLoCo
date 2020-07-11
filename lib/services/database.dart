import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:locationapp/models/offer.dart';

class DatabaseService {

  final String uid;
  DatabaseService({ this.uid });

  // collection reference
  final CollectionReference offersCollection = Firestore.instance.collection('offers');

  Future<void> updateUserData(String title, String description, String location, int price) async {
    return await offersCollection.document(uid).setData({
      'title': title,
      'description': description,
      'adresse': location,
      'price': price,
    });
  }

}