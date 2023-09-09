import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  int selectedImageIndex = -1;

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
                      width: selectedImageIndex == index ? 2.0 : 0.0,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Image.asset(imagePath, width: 150, height: 150)),
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
      bottomNavigationBar: BottomAppBar(color: Colors.white,
        child: FittedBox(child: Row(children: [Image.asset('assets/1.png')],)),),
      body: Container(color: Colors.grey[100],
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
                        onPressed: () {Navigator.pop(context);},
                        icon: Icon(Icons.arrow_back_ios_new),
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(22, 10, 22, 10),
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
                        padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                        child: Row(
                          children: [
                            FittedBox(
                              child: Text(
                                "What",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Choose Service",
                                  style: TextStyle(color: Colors.grey),
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
                    padding: const EdgeInsets.fromLTRB(22, 10, 22, 10),
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
                          padding: const EdgeInsets.fromLTRB(15, 8, 0, 5),
                          child: Column(children: [
                            Row(
                              children: [
                                Text(
                                  "Where",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
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
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.grey, width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        hintText: "Choose Area",
                                        border: InputBorder.none,
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
                              height: 200.0,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  // Add your left-scrollable images and text here
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
                  padding: const EdgeInsets.fromLTRB(22, 10, 22, 10),
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
                        padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                        child: Row(
                          children: [
                            FittedBox(
                              child: Text(
                                "When",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
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
                                  style: TextStyle(color: Colors.grey),
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
                  padding: const EdgeInsets.fromLTRB(22, 10, 22, 10),
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
                        padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                        child: Row(
                          children: [
                            FittedBox(
                              child: Text(
                                "Budget",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
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
                                  style: TextStyle(color: Colors.grey),
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
                  padding: const EdgeInsets.fromLTRB(22, 10, 22, 10),
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
                        padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                        child: Row(
                          children: [
                            FittedBox(
                              child: Text(
                                "Style",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
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
                                  style: TextStyle(color: Colors.grey),
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
                  padding: const EdgeInsets.fromLTRB(22, 10, 22, 10),
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
                        padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                        child: Row(
                          children: [
                            FittedBox(
                              child: Text(
                                "Language",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
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
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(15.0), // Round the corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // Shadow color
                        spreadRadius: 1, // Spread radius
                        blurRadius: 1, // Blur radius
                        offset: Offset(0, 2), // Shadow offset
                      ),
                    ],
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Container(
                      // Wrap Text with another Container for styling
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
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
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}