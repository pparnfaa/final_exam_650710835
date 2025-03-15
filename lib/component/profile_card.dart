import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class MyProfileCard extends StatelessWidget {
  final String name, email, phoneNum, imageUrl, hobby;

  const MyProfileCard({super.key, required this.name, required this.email, required this.phoneNum, required this.imageUrl, required this.hobby});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 255, 212, 242),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
          ),
        ],   
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(imageUrl),
          ),
          SizedBox(height: 10,),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.email,
                color: const Color.fromARGB(255, 133, 196, 227),
              ),
              Text(email, style: TextStyle(fontSize: 16),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone, color: const Color.fromARGB(255, 123, 216, 127),
              ),
              Text(phoneNum,style: TextStyle(fontSize: 16),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hobby : '),
              Text(hobby)
            ],
          )
        ],
      ),
    );
  }
}