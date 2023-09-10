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

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomAppBar(
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Stack(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        hintText: "What are you looking for?",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              print("Filter");
                            },
                            icon: Icon(Icons.filter_list_alt),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  "Browse Photographs",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 250,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return _buildCarouselItem(images[index], index);
                  },
                ),
              ),
              Center(
                child: Text(
                  "Browse by Area",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),child: Image.asset(
                  "assets/map.png",
                  fit: BoxFit.cover,
                  height: 240,width: 325,
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCarouselItem(String imagePath, int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: FittedBox(
                child: Container(
                  width: 400,
                  height: 350,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 20,
            child: SizedBox(
              width: 50,
              height: 50,
              child: IconButton(
                icon: liked[index]
                    ? Icon(Icons.favorite,)
                    : Icon(Icons.favorite_border,color:Colors.grey[600]),
                color: liked[index] ? Colors.red : Colors.grey,
                onPressed: () {
                  setState(() {
                    liked[index] = !liked[index];
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}