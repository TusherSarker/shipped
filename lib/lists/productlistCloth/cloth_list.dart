import 'package:flutter/material.dart';
class ClothList extends StatefulWidget {
  const ClothList({Key? key}) : super(key: key);

  @override
  _ClothListState createState() => _ClothListState();
}

class _ClothListState extends State<ClothList> {
  var Product_list = [

    {
      "Name" :'Blazer',
      "Picture":'assets/images/product/blazer1.jpeg',
      "Price":'4999',
      "OldPrice":'7999',
      "DcPrice":'37%',
      "Description":''
    },
    {
      "Name" :'Blazer',
      "Picture":'assets/images/product/blazer2.jpeg',
      "Price":'6000',
      "OldPrice":'12000',
      "DcPrice":'50%',
      "Description":''
    },
    {
      "Name" :'Dress',
      "Picture":'assets/images/product/dress1.jpeg',
      "Price":'4000',
      "OldPrice":'4000',
      "DcPrice":'',
      "Description":''
    },
    {
      "Name" :'dress',
      "Picture":'assets/images/product/dress2.jpeg',
      "Price":'',
      "OldPrice":'',
      "DcPrice":'',
      "Description":''
    },
    {
      "Name" :'skt',
      "Picture":'assets/images/product/skt1.jpeg',
      "Price":'1800',
      "OldPrice":'2000',
      "DcPrice":'20%',
      "Description":''
    },{
      "Name" :'skt',
      "Picture":'assets/images/product/',
      "Price":'1299',
      "OldPrice":'1299',
      "DcPrice":'',"Description":''

    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
