class RestaurantModel {
  String name;
  String cuisine;
  final FoodTypes typeOfFoodOffered;
  int minimumAmount;
  double userRating;
  bool isFav;
  String imageUrl;
  List<Menuitem> menu;

  RestaurantModel({
    required this.typeOfFoodOffered,
    required this.name,
    required this.cuisine,
    required this.isFav,
    required this.minimumAmount,
    required this.userRating,
    required this.imageUrl,
    required this.menu,
  });
}

enum FoodTypes { veg, nonveg, vegan }

class Menuitem {
  String dishname;
  double ratings;
  double price;
  final List<String> ingridient;
  final List<String> image;

  Menuitem({
    required this.dishname,
    required this.ratings,
    required this.price,
    required this.ingridient,
    required this.image,
  });
}
