import 'package:flutter/material.dart';
import 'package:places/models/category.dart';
import 'package:places/screens/itemdetail.dart';
import 'package:provider/provider.dart';

class PlaceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<PlaceLists>(context);
    final products = product.items;

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.9,
      height: height * 0.425,
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () => Navigator.of(context)
              .pushNamed(ItemDetail.routName, arguments: products[index].id),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.shade100,
            ),
            width: width * 0.6,
            height: height * 0.15,
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Row(
              children: [
                Container(
                  //  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: width * 0.25,
                  height: height * 0.15,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(4, 9),
                          color: Colors.grey.shade400,
                          blurRadius: 5),
                      BoxShadow(
                          offset: Offset(-9, -4),
                          color: Colors.grey.shade200,
                          blurRadius: 5)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(products[index].imageUrl),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        products[index].name,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Icon(
                            Icons.location_on_outlined,
                            color: Colors.blue.shade700,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.003,
                        ),
                        Text(
                          products[index].distance,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.blue.shade400),
                        ),
                        SizedBox(
                          width: width * 0.025,
                        ),
                        Icon(
                          Icons.star_border_rounded,
                          color: Colors.amber.shade700,
                        ),
                        Text(
                          products[index].star,
                          style: TextStyle(
                              color: Colors.amber.shade700,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        products[index].distance,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
