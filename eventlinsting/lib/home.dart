import 'package:flutter/material.dart';

class CategoryItem {
  final String category;
  final String imageUrl;

  CategoryItem({required this.category, required this.imageUrl});
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _controller = TextEditingController();
  int items = 100;
  List<CategoryItem> categoryItems = [
    CategoryItem(
        category: 'Tech',
        imageUrl:
            'https://w0.peakpx.com/wallpaper/138/244/HD-wallpaper-gray-and-black-laptop-computer-on-surface.jpg'),
    CategoryItem(
        category: 'NSS',
        imageUrl: 'https://careercollegeindia.com/uploads/nss.jpg'),
    CategoryItem(
        category: 'Sports',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH1VjtrUdVUQZsoh539oNIbMlZGkC6VTpqvaLNg04V7_TauwXRYxUZa83sDxsl9xIYxa8&usqp=CAU'),
    // Add more items as needed
  ];
  List<String> searchTerms = [
    "Tech","NSS","Sports",
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 240, 237, 237),
                  hintText: 'Search...',
                  
                  prefixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 35,
                      color: Color.fromARGB(255, 78, 78, 78),
                    ),
                    onPressed: () {},
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.cancel),
                    onPressed: _controller.clear,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: items, // Set the number of items in your list
                  itemBuilder: (BuildContext context, int index) {
                    CategoryItem currentItem =
                        categoryItems[index % categoryItems.length];

                    return Container(
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 251, 250, 249),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0)),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      currentItem.imageUrl,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 8, 10, 8),
                                      margin: EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            Color.fromARGB(255, 154, 56, 171),
                                      ),
                                      child: Text(
                                        currentItem.category,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 0, 10, 8),
                                      margin: EdgeInsets.all(8),
                                      child: Text(
                                        "900 Interested",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 10, 0, 10),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 25,
                                            color: Color.fromARGB(
                                              255,
                                              78,
                                              78,
                                              78,
                                            ),
                                          ),
                                          Text("  Bezier Stadium"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 0, 0, 10),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.schedule,
                                            size: 25,
                                            color: Color.fromARGB(
                                              255,
                                              78,
                                              78,
                                              78,
                                            ),
                                          ),
                                          Text(" July 17,2022"),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color.fromARGB(255, 51, 49, 49),
                                  ),
                                  child: TextButton(
                                    style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                        Colors.white,
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Register Now',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromARGB(
                                        255,
                                        51,
                                        49,
                                        49,
                                      ),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(5)),
                                margin: EdgeInsets.fromLTRB(8, 0, 20, 0),
                                child: TextButton(
                                  style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Color.fromARGB(
                                        255,
                                        51,
                                        49,
                                        49,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.upload,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

