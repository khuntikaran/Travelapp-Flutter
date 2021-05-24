import 'package:flutter/material.dart';
import 'package:places/widgets/categories.dart';
import 'package:places/widgets/placelist.dart';

class Home extends StatelessWidget {
  static const routName = '/home';
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        //backgroundColor: Colors.white70,
        leading: Icon(
          Icons.menu,
          color: Colors.grey.shade800,
        ),

        title: Container(
          width: width * 0.8,
          child: Text(
            'Nearby',
            textAlign: TextAlign.end,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.grey.shade300),
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.place_outlined,
                color: Colors.blue,
              ),
              onPressed: () {}),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  'Discover',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      fontFamily: 'cursive'),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: width * 0.8,
                height: height * 0.1,
                decoration: BoxDecoration(
                  color: Colors.purple.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: width * 0.15,
                      height: height * 0.15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: Colors.amber.shade100,
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1519150918373-a002563ee498?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Z2lybCUyMHByb2ZpbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.5,
                      child: Text(
                        'Maria invited you to surf at Canggu with 6 ohters',
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            fontFamily: 'cursive',
                            color: Colors.grey.shade200),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Categories',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      fontFamily: 'cursive'),
                ),
              ),
              Categories(),
              SizedBox(height: height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Near You',
                  style: TextStyle(
                      fontFamily: 'cursive',
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              PlaceList(),
            ],
          ),
        ),
      ),
    );
  }
}
