import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //TabController _tabController;
   int _selectedItem=0;
  //@override
  //void initState() {
  //_tabController = new TabController(length: 4, vsync: this);
  //super.initState();}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.widgets),
            onPressed: () {},
          ),
          actions: [
            new Stack(children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 40,
                  decoration: new BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        blurRadius: 30, // soften the shadow
                        //  spreadRadius: 0.0, //extend the shadow
                        offset: Offset(
                          0, // Move to right 10  horizontally
                          10, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: new IconButton(
                    icon: Icon(Icons.notifications, color: Colors.pink[200]),
                    onPressed: () {},
                  ),
                ),
              ),
              new Positioned(
                right: 10,
                top: 10,
                child: new Container(
                  padding: EdgeInsets.all(2),
                  decoration: new BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 14,
                    minHeight: 14,
                  ),
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ]),
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: [
                Container(
                  width: 280,
                  decoration: new BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        blurRadius: 30, // soften the shadow
                        //  spreadRadius: 0.0, //extend the shadow
                        offset: Offset(
                          0, // Move to right 10  horizontally
                          10, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(25)),
                        prefixIcon: IconButton(
                          icon: Icon(
                            Icons.search_sharp,
                          ),
                          onPressed: () {},
                        ),
                        hintText: 'Search Product',
                        suffixIcon: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            margin: EdgeInsets.only(right: 8),
                            height: 2,
                            width: 4,
                            decoration: new BoxDecoration(
                              color: Colors.pink[200],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.dehaze),
                              onPressed: () {},
                            ))),
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 15.0, top: 15),
            child: Categories(),
          ),
          //SizedBox(height: 1,),
          new Stack(children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.only(left: 1.0, top: 25),
            //child:
            Container(
              margin: EdgeInsets.only(left: 1),
              height: 100,
              width: 270,
              decoration: new BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //    color: Colors.grey[300]!,
                //    blurRadius: 30, // soften the shadow
                //      spreadRadius: 0.0, //extend the shadow
                //     offset: Offset(
                //       0, // Move to right 10  horizontally
                //       10, // Move to bottom 5 Vertically
                //     ),
                //   )
                // ],
                color: Colors.pink[200],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'New \n Arrivals',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset('assets/f.jpg',height: 80,
                  width: 80  ,)
                ],
              ),
            ),
            //),
            // new Positioned(
            //   right: 30,
            //   top: 10,
            //   child: Image.asset('assets/f.jpg',
            //   height: 90,
            //   width: 80,
            //   fit: BoxFit.fill,),
            // ),
          ]),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(
                    'Popular Products',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.local_fire_department_rounded,color: Colors.deepOrange,size: 20,)
                ],
              ),
              Text(
                'See all',
                style: TextStyle(
                  color: Colors.pink[200],
                ),
              )
            ],
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
alignment: Alignment.topRight,

                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(

                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey[300]!,
                    //     blurRadius: 30, // soften the shadow
                    //     //  spreadRadius: 0.0, //extend the shadow
                    //     offset: Offset(
                    //       0, // Move to right 10  horizontally
                    //       10, // Move to bottom 5 Vertically
                    //     ),
                    //   )
                    // ],
                    color: Colors.white,

                    borderRadius: BorderRadius.circular(10),
                     // image: DecorationImage(
                     //   fit: BoxFit.cover,
                     //    image: AssetImage('assets/f.jpg',
                     //
                     //
                     //  ),
                     // ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/f.jpg',
                        height: 70,
                        width: 120,
                        fit: BoxFit.fill,

                      ),
                     SizedBox(),
                      Text(
                        'B1 Analog Clock',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$250 ',
                            style: TextStyle(
                                color: Colors.pink[200],
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          SizedBox(),
                          Container(
                            height: 25,
                            width: 25,

                            decoration: BoxDecoration(

                                color:Colors.black,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Align( alignment: Alignment.center,
                                child: Icon(Icons.add,color: Colors.white,)),
                          ),
                        ],


                      ),
                    ],
                  ),
                  //   child:  ,
                ),
                Container(
                  padding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        blurRadius: 30, // soften the shadow
                        //  spreadRadius: 0.0, //extend the shadow
                        offset: Offset(
                          0, // Move to right 10  horizontally
                          10, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),

                ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/f.jpg',
                        height: 70,
                        width: 120,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(),
                      Text(
                        'B1 Analog Clock',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$250 ',
                            style: TextStyle(
                                color: Colors.pink[200],
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          SizedBox(),
                          Container(
                            height: 25,
                                width: 25,

                                decoration: BoxDecoration(

                                    color:Colors.black,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Align( alignment: Alignment.center,
                                    child: Icon(Icons.add,color: Colors.white,)),
                              ),
                            ],


                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 15),
            child: Container(
              width: 230,
              height: 45,
              decoration: new BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300]!,
                    blurRadius: 30, // soften the shadow
                    //  spreadRadius: 0.0, //extend the shadow
                    offset: Offset(
                      0, // Move to right 10  horizontally
                      10, // Move to bottom 5 Vertically
                    ),
                  )
                ],
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  Icon(Icons.home_filled, color: Colors.pink[200]),
                  Icon(Icons.favorite, color: Colors.grey),
                  Icon(Icons.shopping_bag, color: Colors.grey),
                  Icon(Icons.person, color: Colors.grey),
                ],
              ),
            ),

          ),

        ],
      ),
    );
  }


}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['Clock', 'Lamp', 'Paintings', 'Sofas'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 3),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildText(index)),
    );
  }

  Widget buildText(int index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        child: GestureDetector(
          onTap: () {
            setState(() {
              this.selectedIndex = index;
            });
          },
          child: Container(
              margin: EdgeInsets.only(left: 20),
              width: 70,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300]!,
                    blurRadius: 30, // soften the shadow
                    //  spreadRadius: 0.0, //extend the shadow
                    offset: Offset(
                      0, // Move to right 10  horizontally
                      10, // Move to bottom 5 Vertically
                    ),
                  )
                ],
                color: index == selectedIndex ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: index == selectedIndex ? Colors.white : Colors.black,
                ),
              )),
        ),
      );
}
