import 'package:contacts/src/app_bloc.dart';
import 'package:contacts/src/appwidget.dart';
import 'package:contacts/src/shared/repository/contact_repository.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => ContactRepository()),
      ];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}