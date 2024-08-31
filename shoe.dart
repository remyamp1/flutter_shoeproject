import 'package:flutter/material.dart';
class ShoeExample extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    List<Map> mysandelList=[
      {
        "image":"assets/images/shoe1.jpeg",
        "name":"Ocayle",
        "price":"119",
      },
      {
        "image":"assets/images/shoe2.jpeg",
        "name":"Xami",
        "price":"129",
      },
      {
        "image":"assets/images/shoe3.jpeg",
        "name":"Lena",
        "price":"129",
      },
      {
        "image":"assets/images/shoe4.jpeg",
        "name":"Ulani",
        "price":"119",
      },
      {
        "image":"assets/images/shoe5.jpeg",
        "name":"Max",
        "price":"139",
      },
      {
        "image":"assets/images/shoe6.jpeg",
        "name":"Mars",
        "price":"129",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        
        leading: Icon(Icons.arrow_back),
        title: Text("WOVEM STYLES"),
        centerTitle: true,
        actions: [
          Icon(Icons.chat),
          SizedBox(width: 10),
          Icon(Icons.shopping_bag),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
        (crossAxisCount: 2,crossAxisSpacing: 0,mainAxisSpacing: 0,childAspectRatio: 7), 
        itemCount: 6,
        itemBuilder: (context,index){
          return Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.blueGrey),color: Colors.white),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
              image:DecorationImage(
                image: AssetImage(mysandelList[index]["image"])) ),
            height: 150,
            width: double.infinity,
                ),
                SizedBox(height: 15,),
                Text(mysandelList[index]["name"]),
                SizedBox(height: 15,),
                Text("\$${mysandelList[index]["price"]}"),
              ],
            ),
            
                
            
          );
          
        }
        )
      ),
    );
  }
}