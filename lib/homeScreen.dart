import 'package:flutter/material.dart';
import 'package:untitled/Search_with_carousel.dart';
import './searchPage.dart';

class MyScreen extends StatefulWidget {
  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  int selectedImageIndex = 0;

  Widget buildImageWithBorder(int index, String imagePath, String labelText) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImageIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: selectedImageIndex == index
                          ? Colors.black
                          : Colors.transparent,
                      width: selectedImageIndex == index ? 1.5           : 0.0,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Image.asset(imagePath, width: 100, height: 100)),
            SizedBox(height: 8.0),
            Text(
              labelText,
              style: selectedImageIndex == index
                  ? TextStyle(fontWeight: FontWeight.bold)
                  : TextStyle(),
            ),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: SizedBox(height: 70,
          child: Row(
            children: [Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: FittedBox(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/1.png',
                            height: 50,
                          ),Text("Explore",style: TextStyle(fontSize: 12),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),Spacer(),
              InkWell(
                onTap: () {},
                child:  FittedBox(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/2.png',
                        height: 50,
                      ),Text("Inbox",style: TextStyle(fontSize: 12),)
                    ],
                  ),
                ),
              ),Spacer(),
              InkWell(
                onTap: () {},
                child: FittedBox(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/3.png',
                        height: 50,
                      ),Text("Clik'd",style: TextStyle(fontSize: 12),)
                    ],
                  ),
                ),
              ),Spacer(),
              InkWell(
                onTap: () {},
                child: FittedBox(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/4.png',
                        height: 50,
                      ),Text("Wishlist",style: TextStyle(fontSize: 12),)
                    ],
                  ),
                ),
              ),Spacer(),
              InkWell(
                onTap: () {},
                child: FittedBox(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/5.png',
                        height: 50,
                      ),Text("Profile",style: TextStyle(fontSize: 12),)
                    ],
                  ),
                ),
              ),Spacer()
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_new,size: 20,),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                Text(
                  "Project Name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(22, 15, 22, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 1, 0, 1),
                        child: Row(
                          children: [
                            Text(
                              "What",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Choose Service",
                                  style: TextStyle(color: Colors.grey,fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(22,5, 22, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 0,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                          child: Column(children: [
                            Row(
                              children: [
                                Text(
                                  "Where",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(

                                        hintText: "Choose Area",hintTextDirection: TextDirection.rtl,

                                        border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.grey, width: 2.0),
                                          borderRadius:
                                          BorderRadius.circular(20.0),
                                        ),
                                        prefixIcon: Icon(
                                          Icons.search,
                                          color: Colors.grey,
                                        ), // Magnifying icon
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 150.0,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [

                                  buildImageWithBorder(
                                      0, "assets/logo.png", 'I\'m flexible'),
                                  buildImageWithBorder(
                                      1, "assets/logo.png", 'Europe'),
                                  buildImageWithBorder(
                                      2, "assets/logo.png", 'Italy'),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(22,5, 22, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 1, 0, 1),
                        child: Row(
                          children: [
                            FittedBox(
                              child: Text(
                                "When",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Choose Date(s)",
                                  style: TextStyle(color: Colors.grey,fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(22,5, 22, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 1, 0, 1),
                        child: Row(
                          children: [
                            FittedBox(
                              child: Text(
                                "Budget",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Choose Range",
                                  style: TextStyle(color: Colors.grey,fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(22,5, 22, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 1, 0, 1),
                        child: Row(
                          children: [
                            FittedBox(
                              child: Text(
                                "Style",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Choose Style",
                                  style: TextStyle(color: Colors.grey,fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(22, 5, 22, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 1, 0, 1),
                        child: Row(
                          children: [
                            FittedBox(
                              child: Text(
                                "Language",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Prefered language",
                                  style: TextStyle(color: Colors.grey,fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:EdgeInsets.fromLTRB(0, 5, 0, 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius:
                          BorderRadius.circular(15.0), // Round the corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1), // Shadow color
                          spreadRadius: 1, // Spread radius
                          blurRadius: 1, // Blur radius
                          offset: Offset(0, 2), // Shadow offset
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextButton(
                        onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CarouselPage()),
                        );},
                        child: Text(
                          "Search",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
