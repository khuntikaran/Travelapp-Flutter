import 'package:flutter/material.dart';
import 'package:places/models/category.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 1,
      height: height * 0.08,
      child: ListView.builder(
        itemBuilder: (context, index) => InkWell(
          splashColor: Colors.purple.shade100,
          onTap: () {},
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            height: height * 0.07,
            width: width * 0.35,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: width * 0.08,
                  height: height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(catlist[index].imageUrl),
                    ),
                  ),
                ),
                Text(catlist[index].name),
              ],
            ),
          ),
        ),
        itemCount: catlist.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
