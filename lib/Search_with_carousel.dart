import 'package:flutter/material.dart';

class CarouselPage extends StatefulWidget {
  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  PageController _pageController = PageController(
    initialPage: 1,
    viewportFraction: 0.8,
  );

  List<String> images = [
    "assets/img1.jpeg",
    "assets/img2.jpeg",
    "assets/img3.jpeg",
  ];
  List<bool> liked = [false, false, false];
  int currentPage = 1;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
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
                          ), Text("Explore", style: TextStyle(fontSize: 12),)
                        ],
                      ),
                    ),
                  ),
                ],
              ), Spacer(),
              InkWell(
                onTap: () {},
                child: FittedBox(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/2.png',
                        height: 50,
                      ), Text("Inbox", style: TextStyle(fontSize: 12),)
                    ],
                  ),
                ),
              ), Spacer(),
              InkWell(
                onTap: () {},
                child: FittedBox(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/3.png',
                        height: 50,
                      ), Text("Clik'd", style: TextStyle(fontSize: 12),)
                    ],
                  ),
                ),
              ), Spacer(),
              InkWell(
                onTap: () {},
                child: FittedBox(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/4.png',
                        height: 50,
                      ), Text("Wishlist", style: TextStyle(fontSize: 12),)
                    ],
                  ),
                ),
              ), Spacer(),
              InkWell(
                onTap: () {},
                child: FittedBox(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/5.png',
                        height: 50,
                      ), Text("Profile", style: TextStyle(fontSize: 12),)
                    ],
                  ),
                ),
              ), Spacer()
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
              Center(
                child: Text(
                  "Browse Photographs",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 300,
                child: Stack(alignment: Alignment.center,
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      itemCount: images.length * 10, onPageChanged: (index) {
                      setState(() {
                        currentPage = index;
                      });
                    },


                      itemBuilder: (context, index) {
                        return _buildCarouselItem(
                            images[index%3], index%3, currentPage);
                      },
                    ),
                  ],
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Browse by Area",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ), Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ), child: Image.asset(
                  "assets/map.png",
                  fit: BoxFit.cover,
                  height: 240, width: 325,
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCarouselItem(String imagePath, int index, int currentIndex) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: 500,
              height: 500,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 30,
            child: SizedBox(
              width: 50,
              height: 50,
              child: IconButton(
                icon: liked[index]
                    ? Icon(Icons.favorite, size: 40)
                    : Icon(
                  Icons.favorite_border,
                  size: 40,
                  color: Colors.grey[600],
                ),
                color: liked[index] ? Colors.grey : Colors.grey,
                onPressed: () {
                  setState(() {
                    liked[index] = !liked[index];
                  });
                },
              ),
            ),
          ),
          if (index == currentIndex%3)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                    InkWell(
                      child: Image.asset(
                        "assets/leftW.png",
                        width: 80,
                        height: 50,
                      ),
                      onTap: () {
                        _pageController.previousPage(
                          duration: Duration(milliseconds: 450),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),

                    InkWell(
                      child: Image.asset(
                        "assets/rightW.png",
                        width: 80,
                        height: 50,
                      ),
                      onTap: () {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 450),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}