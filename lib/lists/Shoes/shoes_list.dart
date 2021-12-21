import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shipped/lists/Shoes/show_display.dart';
class Shoes extends StatelessWidget {
   Shoes({Key? key}) : super(key: key);
   var ShoeList =[
     {
       "Name" :'hill',
       "Picture":'assets/images/product/hills1.jpeg',
       "Price":'1200',
       "OldPrice":'1500',
       "DcPrice":'20%',
       "Description":'High-heeled shoes, also known as high heels or simply heels, are a type of shoe in which the heel is tall or raised, resulting in the heel of the wearer\'s foot being significantly higher off the ground than the wearer\'s toes. ... There are many types of high heels, varying in colors, materials, style, and origin.'
     },
     {
       "Name" :'hills',
       "Picture":'assets/images/product/hills2.jpeg',
       "Price":'790',
       "OldPrice":'890',
       "DcPrice":'10%',
       "Description":'High-heeled shoes, also known as high heels or simply heels, are a type of shoe in which the heel is tall or raised, resulting in the heel of the wearer\'s foot being significantly higher off the ground than the wearer\'s toes. ... There are many types of high heels, varying in colors, materials, style, and origin.'
     },
   ];
   var Index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Shows")),
        backgroundColor: Colors.cyan,
      ),
      body: ListView.builder(
          cacheExtent: 100,
          physics: BouncingScrollPhysics(),
          itemCount: ShoeList.length,
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
                              builder: (context) => ShowDisplay(
                                Index: index,
                                ProductList: ShoeList,
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
                              '${ShoeList[index]['Picture']}',
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
                                  Text('${ShoeList[index]['Name']}',
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
                                    ''' ${ShoeList[index]['Price']}''',
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
                                    '${ShoeList[index]['OldPrice']}',
                                    style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.lineThrough),
                                  )
                                ],
                              ),
                              Text('${ShoeList[index]['DcPrice']}')
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
