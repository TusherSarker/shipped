import 'package:flutter/material.dart';
import 'package:shipped/lists/Accessories/accessories_list.dart';
import 'package:shipped/lists/Shoes/shoes_list.dart';
import 'package:shipped/lists/formal/formal_list.dart';

class HorizontalListview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 11,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          InkWell(onTap: (){},
            child: cc(image_location: 'assets/images/accories/tshirt.png',
                image_caption: 'tshirt'),
          ),
          InkWell(onTap: (){},
            child: cc(image_location: 'assets/images/accories/jeans.png',
                image_caption: 'jeans'),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Shoes()));
          },
            child: cc(image_location: 'assets/images/accories/shoe.png',
                image_caption: 'shoe'),
          ),
          InkWell(onTap: (){},
            child: cc(image_location: 'assets/images/accories/informal.png',
                image_caption: 'informal'),
          ),
          InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>FormalList()));},
            child: cc(image_location: 'assets/images/accories/formal.png',
                image_caption: 'formal'),
          ),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Accessories()));
          },
            child: cc(image_location: 'assets/images/accories/accessories.png',
                image_caption: 'accessories'),
          ),
          InkWell(onTap: (){
},
            child: cc(image_location: 'assets/images/accories/dress.png',
                image_caption: 'dress',),
          )
        ],
      ),
    );
  }
}

class cc extends StatelessWidget {
  final String image_location;
  final String image_caption;
  cc({required this.image_location, required this.image_caption});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width / 2.7,
        child: ListTile(
          title: Image.asset(image_location,
          height: MediaQuery.of(context).size.height / 20,
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.09,
                top: MediaQuery.of(context).size.height*0.002),
            child: Text(image_caption),
          ),
        ),
      ),
    );
  }
}