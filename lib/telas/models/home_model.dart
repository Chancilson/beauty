import 'package:flutter/material.dart';

class HomeModel {
  HomeModel({
    required this.posicao,
    required this.icone,
    required this.titulo,
  });

  final IconData icone;
  final String titulo;
  final int posicao ;





}


  List  modelo = [

HomeModel(icone: Icons.home, titulo: "Home", posicao: 0),
HomeModel(icone: Icons.dashboard_outlined, titulo: "Dashoard", posicao: 1),
HomeModel(icone: Icons.person, titulo: "Masters", posicao: 2),
HomeModel(icone: Icons.person, titulo: "Schedule", posicao: 3),
HomeModel(icone: Icons.person, titulo: "Clients", posicao: 4),
HomeModel(icone: Icons.chat, titulo: "Chat", posicao: 5),
HomeModel(icone: Icons.notifications, titulo: "Notifications", posicao: 6),




];
