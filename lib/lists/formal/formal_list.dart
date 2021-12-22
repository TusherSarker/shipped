import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shipped/lists/formal/formal_display.dart';

class FormalList extends StatelessWidget {
  var ProductListtttt = [
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
  ];
  var Index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Formal")),
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
                              builder: (context) => FormalDisplay(
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
