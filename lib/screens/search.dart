import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:locationapp/screens/authenticate/authenticate.dart';
import 'DetailOfHouse.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height/3,
          width: MediaQuery.of(context).size.width,
          child: GoogleMap(
            initialCameraPosition: CameraPosition(target: LatLng(32.3424, -6.3758), zoom: 15.0),
            zoomGesturesEnabled: true,
          ),
        ),
        SizedBox(height: 10.0),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            color: Colors.grey[100],
            child: ListView.separated(
                itemBuilder: (context, index){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.favorite_border, color: index %2 == 0  ? Colors.grey[400] : Colors.redAccent,),
                          ),

                          Container(
                              width: 90,
                              height: 90,
                              child: GestureDetector(
                                child: ClipOval(
                                  child: Image.asset("assets/${index+1}.jpg", fit: BoxFit.cover,),
                                ),
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => DetailOfHouse(index)
                                  ));
                                },
                              )
                          ),

                          SizedBox(width: 20,),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("COSY ROOM 2", style: TextStyle(fontSize: 22, color: Colors.grey[800], fontWeight: FontWeight.bold),),
                                Text("1 voyageur, 1 chambre, 1 salle de bain", style: TextStyle(color: Colors.grey[500],), overflow: TextOverflow.ellipsis,),
                                SizedBox(height: 8,),
                                Text("3,000 Dh/Ms", style: TextStyle(fontSize: 18, color: Colors.green, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),

                          IconButton(icon: Icon(Icons.navigation),)
                        ],
                      ),

                      SizedBox(height: 12,),

                      Container(
                        margin: EdgeInsets.only(left: 32, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.people, size: 12, color: Colors.grey[600],),
                                SizedBox(width: 4,),
                                Text("3 etudiant", style: TextStyle(color: Colors.grey[600]),)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.local_offer, size: 12, color: Colors.grey[600],),
                                SizedBox(width: 4,),
                                Text("3 Beds", style: TextStyle(color: Colors.grey[600]),)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.airline_seat_legroom_reduced, size: 12, color: Colors.grey[600],),
                                SizedBox(width: 4,),
                                Text("3 Bathrooms", style: TextStyle(color: Colors.grey[600]),)
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 16,)
                    ],

                  );
                },
                separatorBuilder: (context, index) => Divider(),
                itemCount: 5
            ),
          ),
        ),
      ],),
      floatingActionButton: FloatingActionButton(
        child: Text('Login'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Authenticate()),
          );
        },
      ),
    );
  }
}
