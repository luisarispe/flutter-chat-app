import 'package:chat/global/enviromment.dart';
import 'package:chat/models/usuario.dart';
import 'package:chat/models/usuarios_response.dart';
import 'package:chat/services/auth_service.dart';
import 'package:http/http.dart' as http;

class UsuarioService {
  Future<List<Usuario>> getUsuarios() async {
    try {
      final resp = await http.get('${Enviromment.apiUrl}/usuario', headers: {
        'Content-Type': 'application/json',
        'x-token': await AuthService.getToken()
      });
      final usuarioResponse = usuarioResponseFromJson(resp.body);
      return usuarioResponse.usuario;
    } catch (e) {
      return [];
    }
  }
}
