import 'package:flutter/material.dart';
import 'receipe_1.dart';

class RecipeDetails extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetails({Key? key, required this.recipe}) : super(key: key);

  @override
  _RecipeDetailsState createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 25),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: widget.recipe.ingredients.length,
                  itemBuilder: (BuildContext context, int index) {
                    final ingredient = widget.recipe.ingredients[index];
                    return Text(
                        ' Quality:  ${ingredient.quality * _sliderVal}\n measure:  ${ingredient.measure}\n name:  ${ingredient.name}');
                  }),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${_sliderVal * widget.recipe.servings} Servings',
              value: _sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
