import 'package:flutter/material.dart';

class HomeModel2 {


  HomeModel2({
    required this.posicao,
    required this.icone,
    required this.titulo,
  });

  final IconData icone;
  final String titulo;
  final int posicao ;







}

List  modelo2 = [


HomeModel2(icone: Icons.settings, titulo: "Settings", posicao: 7),
HomeModel2(icone: Icons.logout, titulo: "Log out", posicao: 8)



];
