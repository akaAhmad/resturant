import 'package:flutter/material.dart';

class categoryComp extends StatelessWidget {
  final String image;
  final String color;
  final String name;
   categoryComp({required this.image,required this.name,required  this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
       
      ),
      child: 
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  height: 150,
                  width: 150,
                 // fit: BoxFit.cover,
                ),
              ),
               Opacity(
                opacity: 0.7,
                 child: ClipRRect(
                             
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    
                    color,
                    height: 150,
                    width: 150,
                   // fit: BoxFit.cover,
                  ),
                             ),
               ),
              
              Center(child: Text('$name',style: TextStyle(fontSize: 18,color: const Color.fromARGB(255, 255, 255, 255)),))
              
            ],
          ),
          
    );
  }
}