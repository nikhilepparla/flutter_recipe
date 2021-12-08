


class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredients> ingredients;
  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);
  static List<Recipe> sample = [
    Recipe(
        'biryani', 'assets/biryani.jpg', 4, [ Ingredients(2, 'box', 'sha sha')]),
    Recipe('burger', 'assets/burger.jpeg', 2,
        [Ingredients(5, '6:kg', 'meatballs')]),
    Recipe('fries', 'assets/fries.jpeg', 5, [Ingredients(6, '5kg', 'chicken')]),
    Recipe('Hawaiian pizza', 'assets/Hawaiian_pizza.jpg', 5,
        [Ingredients(6, '5kg', 'chicken')]),
    Recipe('chaco chips', 'assets/chacho_chips.jpg', 5,
        [Ingredients(6, '5kg', 'chicken'), Ingredients(1, 'item', 'pizza')]),
  ];
}

class Ingredients {
  double quality;
  String measure;
  String name;
  Ingredients(this.quality, this.measure, this.name);
}
