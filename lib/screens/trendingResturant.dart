import 'package:flutter/material.dart';

import '../components/resturantCard.dart';

class TrendingRestaurantsScreen extends StatelessWidget {

  List<String>imgPaths=['images/coverdish.jpg','images/coverdish.jpg','images/coverdish.jpg','images/coverdish.jpg','images/coverdish.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.grey,
      
      appBar: AppBar(
        
        title: Center(child: Text('Trending Restaurants',style: TextStyle(
          color: Colors.black,
        ),)),
        backgroundColor: Colors.white,

      ),
      body: ListView.builder(
        itemCount: imgPaths.length, // Replace with the actual number of trending restaurants
        itemBuilder: (context, index) {
          // Return a widget for each trending restaurant
          return RestaurantCard(
            image: '${imgPaths[index]}', // Replace with your image path
            name: 'Restaurant ${index + 1}',
            rating: 4.5, 
            foodsort: 'Italian',
            distance: '2 Km',
            address: '394 Broklyn ,NY 100123, USA',// Replace with actual ratings
          );
          
        },

      ),
    );
  }
}

