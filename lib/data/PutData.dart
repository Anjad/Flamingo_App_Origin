import 'package:flamengo/models/ListOnFullCategory.dart';
import 'package:flamengo/models/ListCategories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PutData {
  ListCategories photos = new ListCategories([
    "Film Making",
    "Audio",
    "Animation",
    "Production Services",
  ], [
    "assets/photos/film.jpg",
    "assets/photos/voice.jpg",
    "assets/photos/animation.jpg",
    "assets/photos/photoshop.jpg",
  ], [
    Icon(
      Icons.movie,
      color: Colors.grey[700],
      size: 35,
    ),
    Icon(
      Icons.audiotrack,
      color: Colors.grey[700],
      size: 35,
    ),
    Icon(
      Icons.important_devices,
      color: Colors.grey[700],
      size: 35,
    ),
    Icon(
      Icons.widgets,
      color: Colors.grey[700],
      size: 35,
    ),
  ]);

  ListOnFullCategory listFilmMakingTitle = new ListOnFullCategory([
    "Directing and Cinematography",
    "Producing",
    "Writing and screen paly",
    "Editing and VFX",
    "Casting",
  ]);
  ListOnFullCategory listAnimationTitle = new ListOnFullCategory([
    "Graphic Designer",
    "2D animation",
    "Motion Graphic artist",
    "3D Animation",
    "Modeling",
    "Texturing",
    "Lighting",
    "Rendering",
    "Rigging",
    "Animation",
    "Dynamics",
    "Simulation",
    "Postproductions",
  ]);
  ListOnFullCategory listAudioTitle = new ListOnFullCategory([
    "Boom Operator",
    "Composer",
    "Sound Assistant",
    "Sound Designer",
    "Sound Recordis",
    "Voice over",
  ]);
  ListOnFullCategory listProductionTitle = new ListOnFullCategory([
    "Equipment Rental",
    "Equipment",
    "Maintenance",
    "Catering",
    "Transportation",
    "Studio rental",
    "Accommodation",
    "Fixer",
  ]);
}
