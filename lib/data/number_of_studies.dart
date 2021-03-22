import 'package:flutter/material.dart';
import 'dart:math';

final List<String> _sections = [
  'CHEST',
  'BODY',
  'NEURO',
  'IR',
  'PEDS',
  'NUCS',
  'MSK',
  'BREAST'
];

Map<String, Map<String, int>> allSections = {};

void getNumStudies() {
  var random = new Random();
  for (var i = 0; i < _sections.length; i++) {
    Map<String, int> sectionStudies = {
      'STAT_RED': random.nextInt(100),
      'STAT_ORANGE': random.nextInt(100),
      'STAT_YELLOW': random.nextInt(100),
      'NOT_STAT': random.nextInt(100),
    };
    allSections[_sections[i]] = sectionStudies;
  }
}
