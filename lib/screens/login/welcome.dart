import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vegan_food/screens/login/login.dart';
import 'package:vegan_food/screens/login/signup.dart';
import 'package:vegan_food/widgets/button_base.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Bem vindo",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30, fontFamily: 'Montserrat'),

                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "verificação automática de identidade, que permite verificar sua identidade",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: SvgPicture.asset('assets/healthy.svg'),
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                  ButtonBase(title: 'Login', onPress: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                  },),
                  SizedBox(height: 20,),
                  ButtonBase(title: 'Sign Up', backgroundColor: Colors.green, textColor: Colors.white, onPress: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                  },),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
