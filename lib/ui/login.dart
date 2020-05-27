import 'package:flutter/material.dart';
import 'package:internsgittraining/custom_mesages.dart';
import 'package:internsgittraining/style/colors.dart';
import 'package:internsgittraining/style/theme.dart';
import 'package:internsgittraining/ui/home.dart';

class Login extends StatelessWidget {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget sizedBoxH16() {
    return SizedBox(
      height: 16.0,
    );
  }

  Widget textField(BuildContext context, TextEditingController controller) {
    return TextField(
      controller: controller,
    );
  }

  Widget signInButton(BuildContext context) {
    return RaisedButton(
      color: opsTheme.buttonColor,
      child: Text(
        CustomMessages.signInText,
      ),
      onPressed: () {
        print(
            "User Name : ${userNameController.text.trim()} and Password: ${passwordController.text.trim()}");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home(username: userNameController.text.trim(),)),
        );
      },
    );
  }

  Widget signIn(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        textField(context, userNameController),
        sizedBoxH16(),
        textField(context, passwordController),
        sizedBoxH16(),
        signInButton(context)
      ],
    );
  }

  Widget body(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0), child: signIn(context));
  }

  Widget appBar(BuildContext context) {
    return AppBar(
      backgroundColor: opsColors.primaryDark,
      title: Text(
        CustomMessages.signInText,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBar(context), body: body(context));
  }
}
