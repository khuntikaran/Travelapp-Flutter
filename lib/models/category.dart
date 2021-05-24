import 'package:flutter/cupertino.dart';

class Category {
  final String name;
  final String imageUrl;

  Category({this.imageUrl, this.name});
}

List<Category> catlist = [
  Category(
      name: 'Locations',
      imageUrl:
          'https://cdn2.vectorstock.com/i/1000x1000/33/11/surfing-icon-isometric-3d-style-vector-7723311.jpg'),
  Category(
      name: 'Events',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-iAY_fxsumsWBmXSTc-_vZ53XwLnudqElaw&usqp=CAU'),
  Category(
      name: 'Shoping',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe10LB3B7IrQPQ87vQHkg_zJpBTm3DHNMjOQ&usqp=CAU'),
];

class Places {
  final String id;
  final String name;
  final String distance;
  final String star;
  final String visited;
  final String imageUrl;
  final String description;

  Places(
      {this.id,
      this.name,
      this.distance,
      this.star,
      this.visited,
      this.imageUrl,
      this.description});
}

class PlaceLists with ChangeNotifier {
  List<Places> _placelist = [
    Places(
        id: '1',
        name: 'Bondi Beach',
        distance: '1.2km away',
        star: '4.9',
        visited: '+5 visited',
        imageUrl:
            'https://images.pexels.com/photos/3601425/pexels-photo-3601425.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        description:
            'The sweeping white sand crescent of bondi is one of Australia\'s most iconic beaches\. Realiable waves draw surfers while,nearby hardy locals swim in the icebergs ocean pool'),
    Places(
        id: '2',
        name: 'Canggu',
        distance: '2.6km away',
        star: '4.7',
        visited: '+8 visited',
        imageUrl:
            'https://images.pexels.com/photos/753626/pexels-photo-753626.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        description:
            'The sweeping white sand crescent of bondi is one of Australia\'s most iconic beaches\. Realiable waves draw surfers while,nearby hardy locals swim in the icebergs ocean pool'),
    Places(
        id: '3',
        name: 'Hossengor ',
        distance: '3.5km away',
        star: '4.5',
        visited: '+10 visited',
        imageUrl:
            'https://images.pexels.com/photos/1591373/pexels-photo-1591373.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        description:
            'The sweeping white sand crescent of bondi is one of Australia\'s most iconic beaches\. Realiable waves draw surfers while,nearby hardy locals swim in the icebergs ocean pool'),
  ];

  List<Places> get items {
    return [..._placelist];
  }

  Places getItemById(String id) {
    return _placelist.firstWhere((prodId) => prodId.id == id);
  }
}
