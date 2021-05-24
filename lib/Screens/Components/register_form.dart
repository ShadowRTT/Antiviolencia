import 'package:antiviolencia/components/rounded_button.dart';
import 'package:antiviolencia/components/rounded_input.dart';
import 'package:antiviolencia/components/rounded_number.dart';
import 'package:antiviolencia/components/rounded_password_input.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    Key key,
    @required this.isLogin,
    @required this.animationDuration,
    @required this.size,
    @required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isLogin ? 0.0 : 1.0,
      duration: animationDuration * 5,
      child: Visibility(
        visible: !isLogin,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: size.width,
            height: defaultLoginSize,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Registrate para protegerte',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(height: 40),
                  //SvgPicture.asset('assets/images/register.svg'),
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/Logo3.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(height: 40),
                  RoundedNumber(
                      icon: Icons.face_rounded, hint: 'Carnet de Identidad'),
                  RoundedInput(icon: Icons.face_rounded, hint: 'Nombre'),
                  RoundedInput(
                      icon: Icons.face_rounded, hint: 'Apellido Paterno'),
                  RoundedInput(
                      icon: Icons.face_rounded, hint: 'Apellido Materno'),
                  RoundedNumber(icon: Icons.phone, hint: 'Telefono'),
                  RoundedNumber(
                    icon: Icons.calendar_today,
                    hint: 'Edad',
                  ),
                  RoundedInput(icon: Icons.mail, hint: 'Correo Electronico'),
                  RoundedPasswordInput(hint: 'Contraseña'),
                  SizedBox(height: 10),
                  RoundedButton(title: 'Registrarse'),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
