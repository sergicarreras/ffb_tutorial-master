import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

// A list of `Chip`s that acts like radio buttons

final exampleChoiceChip = FormBuilderChoiceChip(
  name: 'choice_chip',
  decoration: InputDecoration(
    labelText: 'What is your favorite ice flavor?',
  ),
  options: [
    FormBuilderChipOption(value: 'Chocolate', child: Text('Chocolate 🍫')),
    FormBuilderChipOption(value: 'Strawberry', child: Text('Strawberry 🍓')),
    FormBuilderChipOption(value: 'Vanilla', child: Text('Vanilla 🍦')),
    FormBuilderChipOption(
        value: 'Cookie Dough', child: Text('Cookie Dough 🍪')),
    FormBuilderChipOption(value: 'Mango', child: Text('Mango 🥭')),
  ],
);
