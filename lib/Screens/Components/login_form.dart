import 'package:antiviolencia/Screens/Components/restorePass_form.dart';
import 'package:antiviolencia/Screens/login/login.dart';
import 'package:antiviolencia/components/rounded_button.dart';
import 'package:antiviolencia/components/rounded_input.dart';
import 'package:antiviolencia/components/rounded_password_input.dart';
import 'package:antiviolencia/constants.dart';

import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
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
      opacity: isLogin ? 1.0 : 0.0,
      duration: animationDuration * 4,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: size.width,
          height: defaultLoginSize,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hola, ¿Necesitas ayuda?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 40),
                //SvgPicture.asset('assets/images/login.svg'),

                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/images/Logo3.jpg'),
                          fit: BoxFit.cover)),
                ),

                SizedBox(height: 40),
                RoundedInput(icon: Icons.mail, hint: 'Correo Electronico'),
                RoundedPasswordInput(hint: 'Contraseña'),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  width: double.infinity,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RestorePassForm(
                                      isLogin: isLogin,
                                      animationDuration: animationDuration,
                                      size: size,
                                      defaultLoginSize: defaultLoginSize)));
                        },
                        child: Text(
                          '¿Olvido su contraseña?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                ),
                SizedBox(height: 10),
                RoundedButton(title: 'Iniciar sesión'),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
