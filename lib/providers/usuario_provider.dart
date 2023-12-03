import 'package:app/constants.dart';
import 'package:app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

final urlapi = url;
class Usurio_provider with ChangeNotifier {
  List<Usuario> usuarios = [];

  getUsuarios() async {
    final url1 = Uri.http(urlapi, 'api/usuario');
    final resp = await http.get(url1, headers: {
      "Access-Control-Allow.Origin": "*",
      "Access-Control-Allow.Credentials": "true",
      'Contente-type': 'application/json',
      'Accept': 'application/json'
    });
    final response = usuarioFromJson(resp.body);
    usuarios = response;
    notifyListeners();
  }
}
