import 'package:chat/widgets/boton_azul.dart';
import 'package:chat/widgets/custom_input.dart';
import 'package:chat/widgets/labels.dart';
import 'package:chat/widgets/logo_img.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff2f2f2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Logo(
                    texto: 'Registrate',
                  ),
                  _Form(),
                  Labels(
                    titulo: '¿Ya tienes una cuenta?',
                    subtitulo: 'Ingresa ahora',
                    ruta: 'login',
                  ),
                  _Terminos()
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final nombreCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            CustomInput(
              icon: Icons.perm_identity,
              placeholder: 'Nombre',
              keyboardType: TextInputType.text,
              textController: nombreCtrl,
            ),
            CustomInput(
              icon: Icons.email,
              placeholder: 'Correo',
              keyboardType: TextInputType.emailAddress,
              textController: emailCtrl,
            ),
            CustomInput(
              icon: Icons.lock_outline,
              placeholder: 'Contraseña',
              isPassword: true,
              textController: passCtrl,
            ),
            BotonAzul(
              textoBtn: 'Registrar',
              onPressed: () {
                print(emailCtrl.text);
                print(passCtrl.text);
              },
            )
          ],
        ));
  }
}

class _Terminos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Column(
        children: [
          Text(
            'Términos y condiciones de uso',
            style: TextStyle(fontWeight: FontWeight.w200),
          ),
        ],
      ),
    );
  }
}
