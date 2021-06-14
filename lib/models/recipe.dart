class Recipe {
  String photo;
  String name;
  int preparationTime;
  int numberOfFavorites;
  int numberOfComments;
  int income;
  List<String> ingredientsPasta;
  List<String> ingredientsRoof;
  List<String> preparationPasta;
  List<String> preparationRoof;

  Recipe({
    required this.photo,
    required this.name,
    required this.preparationTime,
    required this.numberOfFavorites,
    required this.numberOfComments,
    required this.income,
    required this.ingredientsPasta,
    required this.ingredientsRoof,
    required this.preparationPasta,
    required this.preparationRoof,
  });
}
