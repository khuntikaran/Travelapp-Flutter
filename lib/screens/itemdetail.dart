import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:places/models/category.dart';
import 'package:places/widgets/imageCard.dart';
import 'package:provider/provider.dart';

class ItemDetail extends StatelessWidget {
  static const routName = '/itemdetail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final product =
        Provider.of<PlaceLists>(context, listen: false).getItemById(productId);
    final desc = Provider.of<PlaceLists>(context).items;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
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
            children: [
              ImageCard(),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                width: width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: height * 0.05,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(3, 6),
                            color: Colors.grey.shade300,
                            blurRadius: 3,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextButton(
                        child: Text(
                          'Overview',
                          style: TextStyle(color: Colors.grey.shade400),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      height: height * 0.05,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(3, 6),
                            color: Colors.grey.shade300,
                            blurRadius: 3,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextButton(
                        child: Text(
                          'Reviews',
                          style: TextStyle(color: Colors.grey.shade400),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      height: height * 0.05,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(3, 6),
                            color: Colors.grey.shade300,
                            blurRadius: 3,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextButton(
                        child: Text(
                          'Friends',
                          style: TextStyle(color: Colors.grey.shade400),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                width: width * 0.9,
                child: Row(
                  children: [
                    Container(
                      width: width * 0.3,
                      height: height * 0.1,
                      child: GridTileBar(
                        leading: Icon(
                          Icons.arrow_upward,
                          color: Colors.blue.shade400,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            'Tide',
                            style: TextStyle(
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Text(
                          '5.8ft',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.3,
                      height: height * 0.1,
                      child: GridTileBar(
                        leading: Icon(
                          Icons.wb_sunny_outlined,
                          color: Colors.blue.shade400,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            'Weather',
                            style: TextStyle(
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Text(
                          '25C',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.3,
                      height: height * 0.1,
                      child: GridTileBar(
                        leading: Icon(
                          Icons.waves_outlined,
                          color: Colors.blue.shade400,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            'Wind',
                            style: TextStyle(
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Text(
                          '7.8kn',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                width: width * 0.9,
                height: height * 0.18,
                child: Stack(
                  children: [
                    ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaY: 2.0, sigmaX: 2),
                      child: Text(
                        'The sweeping white sand crescent of bondi is one of Australia\'s most iconic beaches\. Realiable waves draw surfers while,nearby hardy locals swim in the icebergs ocean pool',
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 20,
                      child: Container(
                        width: width * 0.8,
                        alignment: Alignment.center,
                        height: height * 0.07,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade400,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(3, 4),
                                color: Colors.blue.shade200,
                                blurRadius: 2),
                            BoxShadow(
                              offset: Offset(-3, -4),
                              color: Colors.blue.shade200,
                              blurRadius: 2,
                            )
                          ],
                        ),
                        child: Text(
                          'Take me there',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
