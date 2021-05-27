import 'package:flutter/material.dart';
import 'package:science/pages.dart';
import 'package:science/templates.dart';

void main() => runApp(
      Template(
        1,
        'What is Global Warming?',
        'asset1.jpg',
        'Global warming is an environmental impact that is being caused by humans. It is causing many problems to our planet including, but not limited to, ocean acidification, wildfires, extreme weather, polar ice cap melting, drastic sea level rise, animal endangerment, disease spread, etc.',
        [
          'How exactly does it work?',
          "I don't believe global warming is real.",
        ],
      ),
    );
