import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/reciepe/ingredients.dart';
import 'package:project/reciepe/receipe_1.dart';






class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe"),
      ),
      body: Card(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: Recipe.sample.length,
                itemBuilder: (BuildContext, int index) {
                  return GestureDetector(
                    child: buildRecipeCard(Recipe.sample[index]),
                    onTap: () {Get.to(()=>RecipeDetails(recipe: Recipe.sample[index],));},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildRecipeCard(Recipe recipe) {
  return Card(
    elevation: 50,

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.all(2),
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage(recipe.imageUrl),
            fit: BoxFit.fill,
          ),
          Text(
            recipe.label,
            style: const TextStyle(fontSize: 25, color: Colors.white),
          )
        ],
      ),
    ),
  );
}
