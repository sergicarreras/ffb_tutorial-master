import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

// Creates field with chips that acts like a checkbox list.

final exampleFilterChip = FormBuilderFilterChip(
  name: 'filter_chip',
  options: [
    FormBuilderChipOption(value: 'Elephant', child: Text('Elephant')),
    FormBuilderChipOption(value: 'Turtle', child: Text('Turtle')),
    FormBuilderChipOption(value: 'Monkey', child: Text('Monkey')),
    FormBuilderChipOption(value: 'Dog', child: Text('Dog')),
    FormBuilderChipOption(value: 'Cat', child: Text('Cat')),
  ],
);
