import 'package:rect_getter/rect_getter.dart';

class IngredientService {
  static final IngredientService _singleton = new IngredientService._internal();
  factory IngredientService() {
    return _singleton;
  }
  IngredientService._internal();

  List<Ingredient> allIngredients = [
    Ingredient(1, "apple"),
    Ingredient(2, "butter"),
    Ingredient(3, "eggs"),
    Ingredient(4, "mozarella"),
    Ingredient(5, "salad"),
    Ingredient(6, "pasta"),
    Ingredient(7, "red pepper"),
    Ingredient(8, "onion"),
    Ingredient(9, "garlic"),
    Ingredient(10, "tomato"),
    Ingredient(11, "bread"),
    Ingredient(12, "milk"),
    Ingredient(13, "cottage Cheese"),
    Ingredient(14, "turkey"),
    Ingredient(15, "lamb"),
    Ingredient(16, "salmon"),
    Ingredient(17, "bacon"),
    Ingredient(18, "peas"),
    Ingredient(19, "shrimp"),
    Ingredient(20, "cod"),
    Ingredient(21, "crab"),
    Ingredient(22, "peach"),
    Ingredient(23, "pork"),
    Ingredient(24, "banana"),
    Ingredient(25, "sugar"),
    Ingredient(26, "honey")
  ];

  List<Ingredient> selectedIngredient = [];
}

class Ingredient {
  int id;
  String name;
  var key;
  double width;

  Ingredient(this.id, this.name) {
    this.key = RectGetter.createGlobalKey();
    this.width = 0.0;
  }
}
