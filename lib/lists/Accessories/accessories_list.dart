import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shipped/Product%20list/listview_display.dart';

class Accessories extends StatelessWidget {
  var ProductListtttt = [
    {
      "Name": 'Blue ps4 Console',
      "Picture": 'assets/images/Ps/ps4_console_blue_1.png',
      "Price": '5,500৳',
      "OldPrice": '5,800৳',
      "DcPrice": '6%',
      "DesName": 'DUALSHOCK 4 Wireless Controller',
      "Description":'This is most comfortable, intuitive controller ever designed. Now even better, and available in a range of colours and styles.'
    },
    {
      "Name": 'White ps4 Console',
      "Picture": 'assets/images/Ps/ps4_console_white_1.png',
      "Price": '6,500৳',
      "OldPrice": '6,800৳',
      "DcPrice": '6%',
      "DesName": 'DUALSHOCK 4 Wireless Controller',
      "Description": 'This is most comfortable, intuitive controller ever designed. Now even better, and available in a range of colours and styles.'
    }
  ];
  var Index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Product list")),
        backgroundColor: Colors.cyan,
      ),
      body: ListView.builder(
          cacheExtent: 100,
          physics: BouncingScrollPhysics(),
          itemCount: ProductListtttt.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AssoriesDisplay(
                                    Index: index,
                                    ProductList: ProductListtttt,
                                  )));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(0, 3))
                          ]),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: double.infinity,
                            child: Image.asset(
                              '${ProductListtttt[index]['Picture']}',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  alignment: Alignment.topLeft,
                                  padding: EdgeInsets.only(left: 14),
                                  child:
                                      Text('${ProductListtttt[index]['Name']}',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ))),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    ''' ${ProductListtttt[index]['Price']}''',
                                    style: TextStyle(
                                      color: Colors.cyan,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '${ProductListtttt[index]['OldPrice']}',
                                    style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.lineThrough),
                                  )
                                ],
                              ),
                              Text('${ProductListtttt[index]['DcPrice']}')
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20, top: 10),
                            child: InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Text(
                                    "Order now",
                                    style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            fontSize: 24,
                                            color: Colors.cyan,
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.bold)),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            );
          }),
    );
  }
}
/*
assets/images/Ps/ps4_console_white_2.png
assets/images/Ps/ps4_console_white_3.png
assets/images/Ps/ps4_console_white_4.png
assets/images/Ps/ps4_console_blue_2.png
assets/images/Ps/ps4_console_blue_3.png
assets/images/Ps/ps4_console_blue_4.png


class Accessories_display extends StatelessWidget {
  final ProductList;

int index;


  Accessories_display({
   required this.ProductList,

required this.index


});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(child: Image.asset('${ProductList

[index]

['Picture']}'))
        ],
      ),
    );
  }
}
*/
