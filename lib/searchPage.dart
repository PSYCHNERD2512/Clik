import 'package:flutter/material.dart';
import 'package:untitled/homeScreen.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: SizedBox(
          height: 70,
          child: Row(
            children: [
              Spacer(),
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
                          ),
                          Text(
                            "Explore",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                child: FittedBox(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/2.png',
                        height: 50,
                      ),
                      Text(
                        "Inbox",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                child: FittedBox(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/3.png',
                        height: 50,
                      ),
                      Text(
                        "Clik'd",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                child: FittedBox(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/4.png',
                        height: 50,
                      ),
                      Text(
                        "Wishlist",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                child: FittedBox(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/5.png',
                        height: 50,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              Spacer()
            ],
          ),
        ),
      ),
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.black),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'What are you looking for?',
                                  border: InputBorder.none,
                                  hintTextDirection: TextDirection.ltr,
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.filter_list,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              // Add your filter button action here
                            },
                            color: Colors.grey, // Set icon color
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    // Heading
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Browse a category",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        _buildCardWithText(context,
                            "assets/wedding-photo.jpeg", "Wedding Photos"),
                        _buildCardWithText(
                            context,
                            "assets/Birthday-photo.jpeg",
                            "Birthday Photos"),
                        _buildCardWithText(context,
                            "assets/Couple-photo.jpeg", "Couple Sessions")
                      ],
                        ),
                      ),
                    )
                    // Multiple Cards
                  ],
                ),
              ),
            ],
          ),
        ),
        color: Colors.grey[200],
      ),
    );
  }
}

Widget _buildCardWithText(
    BuildContext context, String imagePath, String cardText) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyScreen()),
      );
    },
    child: Stack(
      children: [
        Image.asset(
          imagePath,
          fit: BoxFit.cover,

        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Text(
              cardText,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
      ],
    ),
  );
}
