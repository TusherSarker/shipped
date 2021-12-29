import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class Iphonelists extends StatelessWidget {
  final ProductList;
  final index;
  Iphonelists({Key? key, this.ProductList, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("{ProductList[index]['Name']}"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
          ],
        ),
        body: SafeArea(
          child: Container(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: size.height / 2.5,
                    width: double.infinity,
                    child:
                        Image.asset('${ProductList[index]['Thumbnail URL']}')),
                SizedBox(
                  height: 10,
                ),
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite,color: Colors.red,)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.share,color: Colors.deepOrange,)),
                ],),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Text(
                        'USD - ${ProductList[index]['Price']}',
                        style: TextStyle(fontSize: 24,color: Colors.cyan),
                            textScaleFactor: 1.25,
                      )),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '${ProductList[index]['Name']}',
                    style: TextStyle(
                      fontSize: 18,color: Colors.red
                    ),
                  ),
                ),
                Divider(
                  height: 2,
                  thickness: 1,
                  color: Colors.black54,
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Network :-  ${ProductList[index]['Network']}',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 2,
                  thickness: 1,
                  color: Colors.black54,
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Body:-  ${ProductList[index]['Body']}',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 2,
                  thickness: 1,
                  color: Colors.black54,
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Weight:-  ${ProductList[index]['Weight']}',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 2,
                  thickness: 1,
                  color: Colors.black54,
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Build:-  ${ProductList[index]['Build']}',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 2,
                  thickness: 1,
                  color: Colors.black54,
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'SIM:-  ${ProductList[index]['SIM']}',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 2,
                  thickness: 1,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
