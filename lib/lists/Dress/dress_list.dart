import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dress_display.dart';

class DressList extends StatefulWidget {
  const DressList({Key? key}) : super(key: key);

  @override
  _DressListState createState() => _DressListState();
}

class _DressListState extends State<DressList> {
  var Productlist = [
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
          itemCount: Productlist.length,
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
                              builder: (context) => DressDisplay(
                                Index: index,
                                ProductList: Productlist,
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
                              '${Productlist[index]['Picture']}',
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
                                  Text('${Productlist[index]['Name']}',
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
                                    ''' ${Productlist[index]['Price']}''',
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
                                    '${Productlist[index]['OldPrice']}',
                                    style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.lineThrough),
                                  )
                                ],
                              ),
                              Text('${Productlist[index]['DcPrice']}')
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
