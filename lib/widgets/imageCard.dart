import 'package:flutter/material.dart';
import 'package:places/screens/home.dart';
import 'package:provider/provider.dart';
import '../models/category.dart';

class ImageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final product =
        Provider.of<PlaceLists>(context, listen: false).getItemById(productId);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 6),
      width: width * 1,
      height: height * 0.45,
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(3, 10),
              color: Colors.grey.shade400,
              blurRadius: 5,
            ),
          ],
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(product.imageUrl),
          )),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 8,
            child: Container(
              alignment: Alignment.center,
              width: width * 0.12,
              height: height * 0.06,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 3,
                    left: 3.7,
                    child: Container(
                      width: width * 0.1,
                      height: height * 0.052,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(3, 4),
                              color: Colors.blueGrey.shade200,
                              blurRadius: 2),
                          BoxShadow(
                              offset: Offset(-3, -4),
                              color: Colors.blueGrey.shade200,
                              blurRadius: 2),
                        ],
                      ),
                      child: IconButton(
                          alignment: Alignment.topLeft,
                          icon: Icon(
                            Icons.keyboard_arrow_left,
                            size: 25,
                            color: Colors.blue.shade900,
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(Home.routName);
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 8,
            child: Container(
              width: width * 0.12,
              height: height * 0.06,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 3,
                    left: 3.7,
                    child: Container(
                      width: width * 0.1,
                      height: height * 0.052,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(3, 4),
                              color: Colors.blueGrey.shade200,
                              blurRadius: 2),
                          BoxShadow(
                              offset: Offset(-3, -4),
                              color: Colors.blueGrey.shade200,
                              blurRadius: 2),
                        ],
                      ),
                      child: IconButton(
                          icon: Icon(
                            Icons.favorite_outline_rounded,
                            color: Colors.blue.shade900,
                          ),
                          onPressed: () {}),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: Colors.white,
                    ),
                    Text(
                      product.distance,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  width: width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Container(
                        width: width * 0.13,
                        height: height * 0.04,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [Colors.white54, Colors.black38],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.white,
                            ),
                            Text(
                              product.star,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
