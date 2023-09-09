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
        child: FittedBox(
          child: Row(
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/1.png',
                      height: 50, // Adjust the height as needed
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/2.png',
                  height: 50, // Adjust the height as needed
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/3.png',
                  height: 50, // Adjust the height as needed
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/4.png',
                  height: 50, // Adjust the height as needed
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/5.png',
                  height: 50, // Adjust the height as needed
                ),
              ),
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
              SizedBox(height: 5),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    // Heading
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Browse a category",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Multiple Cards

                    _buildCardWithText(context,"assets/wedding-photo.jpeg", "Wedding Photos"),
                    _buildCardWithText(context,"assets/Birthday-photo.jpeg", "Birthday Photos"),
                    _buildCardWithText(context,"assets/Couple-photo.jpeg", "Couple Sessions"),
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



Widget _buildCardWithText(BuildContext context,String imagePath, String cardText) {
  return Card(
    child: InkWell(onTap: (){Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyScreen()),
    );},
      child: Stack(
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,height: 250,
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
                  fontWeight: FontWeight.bold,fontSize: 20
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

