import 'package:flutter/material.dart';
import 'package:movie_tracker/core/di/injectable.dart';
import 'package:movie_tracker/presentation/widgets/app.dart';

void initAndRunApp() {
  configureDependencies();

  runApp(const MovieApp());
}
