//8.2 -  W.A.P. to Design Shopping Item Card using Card, Column, Image, Text, and ElevatedButton. (A)

import 'package:flutter/material.dart';

class EightTwo extends StatelessWidget {
  const EightTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Practical - 08 (02) Shopping Item Card")),
        backgroundColor: Colors.yellowAccent,
    ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              cards(
                  url: "https://img-prd-pim.poorvika.com/product/Apple-iphone-16-pro-max-black-titanium-256gb-Front-Back-View-Model.png",
                  title: "Apple iPhone 16 Pro Max",
                  Subtitle: "(Black Titanium,512GB)",
              ),
              cards(
                  url: "https://img-prd-pim.poorvika.com/cdn-cgi/image/width=1600,height=1600,quality=100/product/Samsung-galaxy-z-fold-7-5g-silver-shadow-12gb-512gb-Front-Back-Fold-View.png",
                  title: "Samsung Galaxy Z Fold7 5G",
                  Subtitle: "(Silver Shadow, 12GB-512GB)",
              ),
            ],
          ),
        ),
      ),
    );


  }
}

Card cards({required String? url,required String? title,required String? Subtitle, String? count="1"})
{
  return Card(
    child: Center(
      child: Container(
        width: 700,
        decoration: BoxDecoration(color: Colors.limeAccent,borderRadius: BorderRadius.circular(20),),
      child:Row(
        children: [
          Container(
            width: 260,
            height: 300,
            decoration: BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.circular(20),),
            child: Image.network("$url"),
          ),
          Column(
            children: [
              Text("$title",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19 ), ),
              Text("$Subtitle",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18, ),),
              SizedBox(height: 80,),
              Row(
                children: [
                  TextButton(style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(),
                      padding: EdgeInsets.only(right:2)
                  ),onPressed: (){},
                       // child: child)ElevatedButton(onPressed: (){},
                    child: Text("-",style: TextStyle(fontSize: 30,color: Colors.black)
                    )
                  ),
                  Text(count!),
                  TextButton(style: ElevatedButton.styleFrom(
                      shape: BeveledRectangleBorder(),
                      padding: EdgeInsets.only(right:2)
                  ),
                      onPressed: (){},
                      // child: child)ElevatedButton(onPressed: (){},
                      child: Text("+",style: TextStyle(fontSize: 20,color: Colors.black)
                      )
                  ),
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.delete)
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
    )
  );
}