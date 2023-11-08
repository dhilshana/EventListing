import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchBarWidget(),
    );
  }
}

class SearchBarWidget extends StatefulWidget {
  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 80, 10, 10),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 240, 237, 237),
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search,
                    size: 35, color: Color.fromARGB(255, 78, 78, 78)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Icon(Icons.cancel)),
          ),
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 300,
                color: const Color.fromARGB(255, 251, 250, 249),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcLQqP4j5oTee7SaZ1j9nZ103BLnZG9KTk6Q&usqp=CAU"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Row(children: [
                      Icon(Icons.location_on,
                          size: 25, color: Color.fromARGB(255, 78, 78, 78)),
                      Text("  Bezier Stadium"),
                    ]),
                    Row(children: [
                      Icon(Icons.schedule,
                          size: 25, color: Color.fromARGB(255, 78, 78, 78)),
                      Text(" July 17,2022"),
                    ]),
                  ], //children
                ),
                margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('Entry B')),
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('Entry C')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
