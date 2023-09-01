import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  final String image;
  final String name;
  final double rating;
  final String foodsort;
  final String distance;
  final String address;
  RestaurantCard({
    required this.image,
    required this.name,
    required this.rating,
    required this.foodsort,
    required this.distance,
    required this.address,
  });

  String whatColor(String srt){
    if (srt=='Italian')
    return 'images/red.jpg';
    if (srt=='Maxican')
    return 'images/blue.jpg';
    return 'images/violet.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.white70.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  height: 300,
                  width: 600,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  //color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
    primary: const Color.fromARGB(255, 255, 255, 255),),
                     child: Container(
                      // height: 16,
                      // width: 64,
                      //color: Colors.white,
                      
                      child: Text('OPEN',style:TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),),
                     )),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          
                          color: Colors.white,child: Icon(Icons.star, color: Colors.yellow, size: 18)),
                        //SizedBox(width: 4),
                         Container(
                          color: Colors.white,
                           child: Text(
                              rating.toString(),
                              style: TextStyle(fontSize: 15.5, color: Colors.black),
                            ),
                         ),
                        
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 18,),
                     Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
                              color:  Color.fromARGB(255, 255, 118, 63),),
                               child: Padding(
                                 padding: const EdgeInsets.all(4.0),
                                 child: Text(
                                    foodsort,
                                    style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 255, 255, 255)),
                                  ),
                               ),
                             ),

                             SizedBox(width: 18,),
                     Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
                              color:  Color.fromARGB(255, 58, 27, 231),),
                               child: Padding(
                                 padding: const EdgeInsets.all(4.0),
                                 child: Text(
                                    distance,
                                    style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 255, 255, 255)),
                                  ),
                               ),
                             ),

                  ],

                  
                  
                ),
                SizedBox(height: 8,),
                  Text('$address',style: TextStyle(color: Colors.grey),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
