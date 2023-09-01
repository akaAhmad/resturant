import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resturant/components/resturantCard.dart';
//import 'package:restaurant_app/trending_restaurants_screen.dart';
import 'package:resturant/screens/trendingResturant.dart';

import '../components/categoryComp.dart';
//import '../components/navi.dart'; // Import the trending restaurants screen

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },
      child: Icon(Icons.add),
      backgroundColor: Color.fromARGB(255, 7, 35, 197),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // appBar: AppBar(
      //   title: Text('Restaurant App'),
      // ),
      bottomNavigationBar: BottomNavigationBar(
    items: [
      BottomNavigationBarItem(
       icon: Icon(Icons.home_outlined,color: Color.fromARGB(255, 7, 35, 197),),label:''
       //.// label: 'Calls',
      ),
      
      BottomNavigationBarItem(
       icon: Icon(Icons.bookmark_border,color: Color.fromARGB(255, 7, 35, 197),),label:''
       //.// label: 'Calls',
      ),
      
      //SizedBox(height: 16,),
      BottomNavigationBarItem(
       icon: Icon(Icons.notifications_none_outlined,color: Color.fromARGB(255, 7, 35, 197),),label:''
       //.// label: 'Calls',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outlined,color: Color.fromARGB(255, 7, 35, 197),),label:''
        //label: 'Noti',
       // label:''
      ),
      
    ],
  ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            TextField(
              decoration: InputDecoration(
                hintText: 'Find Restaurants',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                //:Icon(Icons.road),
              ),
            ),
            SizedBox(height: 20),

            // Trending Restaurants
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(
                  'Trending Restaurants',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),


                
              ElevatedButton(
                 style: ElevatedButton.styleFrom(
    primary: const Color.fromARGB(0, 255, 255, 255), // Background color
  ),
                
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TrendingRestaurantsScreen()),
                );
              },
              child: Text('See All(45)'),
                        ),
              ],

            ),
            SizedBox(height: 10),
            RestaurantCard(image: 'images/coverdish.jpg',name: 'Happy Bones',rating: 4.5,
            foodsort: 'Italian',distance: '2 Km',address: '394 Broklyn ,NY 100123, USA',),
            //Image.asset('images/coverdish.jpg', width: 300, height: 100),
            SizedBox(height: 10),
            
            SizedBox(height: 20),

            // Restaurant Categories
            Text(
              'Category',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                categoryComp(image: 'images/dish (1).jpg',name: 'Italian',color: 'images/red.jpg',),
                categoryComp(image: 'images/dish (3).jpg',name: 'Chinese',color: 'images/violet.jpg',),
                categoryComp(image: 'images/dish (2).jpg',name: 'Maxican',color: 'images/blue.jpg',),
                
              ],
            ),
            SizedBox(height: 16,),
            Text(
              'Friends',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(radius: 
                30,child: Image.asset('images/avatar.png'),),
                 CircleAvatar(radius: 
                30,child: Image.asset('images/avatar.png'),),
                 CircleAvatar(radius: 
                30,child: Image.asset('images/avatar.png'),),
                CircleAvatar(radius: 
                30,child: Image.asset('images/avatar.png'),),
                CircleAvatar(radius: 
                30,child: Image.asset('images/avatar.png'),),
                

              ],
            )

          ],
        ),
      ),
    );
  }
}
