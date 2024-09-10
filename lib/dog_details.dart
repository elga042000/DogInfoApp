import 'package:flutter/material.dart';

class DogDetailsScreen extends StatelessWidget {
  final String? breed;
  final String? info;

  const DogDetailsScreen({super.key, required this.breed, required this.info});
  String getImagePath() {
    switch (breed.toString()) {
      case 'Labrador Retriever':
        return 'assets/images/labrador.jpg';
      case 'Beagle':
        return 'assets/images/beagle.jpg';
      case 'Doberman Pinscher':
        return 'assets/images/doberman.jpg';
      case 'Siberian Husky':
        return 'assets/images/siberian_husky.jpg';
      case 'Pomeranian':
        return 'assets/images/pomeranian.jpg';
      default:
        return 'assets/images/search.jpg';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(breed.toString()),
      backgroundColor: Colors.blueAccent,
      foregroundColor: Colors.white,
      ),
      body: Center(
        child:
        Column(
          children: <Widget>[
            const Text('Dog',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            const Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Divider(color: Color.fromARGB(255, 107, 36, 135),thickness:2.0,height:5,),
            ),
            const SizedBox(height:30,),
            Text(breed.toString(),style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Color.fromARGB(255, 107, 36, 135)),),
            ClipOval(child: Image.asset(getImagePath(),width: 200,height: 200,fit: BoxFit.cover,)),
            const SizedBox(height:30,),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text('About : ${info.toString()}',style: TextStyle(fontSize: 18),),
                ),
              ),
            ),
            SizedBox(height:20),
          ]
        ) ,
      ),
    );
  }
}
