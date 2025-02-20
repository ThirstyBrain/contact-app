import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import 'add_bloc.dart';

class AddModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AddBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => Container();

  static Inject get to => Inject<AddModule>.of();
}