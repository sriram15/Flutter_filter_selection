import 'package:filter_selection/services/ingredient_service.dart';
import 'package:flutter/material.dart';

class SelectableChip extends StatelessWidget {
  final Ingredient ingredient;
  final Function onPressed;
  final Color color;
  SelectableChip({this.ingredient, this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    TextStyle chipStyle = Theme.of(context)
        .textTheme
        .body2
        .copyWith(color: Colors.white, fontSize: 14.0);

    if (ingredient.name.isEmpty) {
      return Container(
        width: ingredient.width - 4.0,
        height: 45.0,
      );
    }

    return GestureDetector(
      onTap: () => this.onPressed(ingredient.id),
      child: Chip(
        padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 0.0),
        backgroundColor: this.color,
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              ingredient.name,
              style: chipStyle,
            ),
            IconButton(
              icon: Icon(
                Icons.add,
                size: 20.0,
              ),
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

class SelectedChip extends StatelessWidget {
  final Ingredient ingredient;
  final Color color;
  SelectedChip({this.ingredient, this.color});

  @override
  Widget build(BuildContext context) {
    TextStyle whiteTextTheme =
        Theme.of(context).textTheme.button.copyWith(color: Colors.white);

    return Chip(
      backgroundColor: this.color,
      label: Row(
        children: <Widget>[
          Text(
            ingredient.name,
            style: whiteTextTheme,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Icon(
              Icons.check,
              size: 16.0,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
