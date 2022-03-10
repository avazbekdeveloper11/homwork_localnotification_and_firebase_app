import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vazifa_jira_1/core/constant/size_config.dart';
import 'package:vazifa_jira_1/core/widgets/my_appbar_widget.dart';
import 'package:vazifa_jira_1/core/widgets/my_elevated_buttons.dart';
import 'package:vazifa_jira_1/core/widgets/my_padding.dart';
import 'package:vazifa_jira_1/core/widgets/my_textforumfiled.dart';
import 'package:vazifa_jira_1/core/widgets/my_textstyle.dart';
import 'package:vazifa_jira_1/provider/hide_show_password_provider.dart';
import 'package:vazifa_jira_1/service/service.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final TextEditingController _textEditingControllerEmail =
      TextEditingController();
  final TextEditingController _textEditingControllerPassword =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(title: "Sign In").getAppBar(context),
      body: MyPadding.paddingSymmetric(
        horizontal: 20,
        vertical: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyPadding.paddingSymmetric(
              vertical: 20,
              child: Text(
                "Email",
                style: MyTextStyle.SimpleStyle(size: 35),
              ),
            ),
            MyTextForumFiled(
              hintText: "Email",
              obscureText: true,
              textEditingController: _textEditingControllerEmail,
            ),
            MyPadding.paddingSymmetric(
              vertical: 20,
              child: Text(
                "Password",
                style: MyTextStyle.SimpleStyle(size: 35),
              ),
            ),
            MyTextForumFiled(
              hintText: "Password",
              textEditingController: _textEditingControllerPassword,
              obscureText: false,
              suffixIcon: Icons.remove_red_eye_outlined,
              suffixOntap: () =>
                  context.read<HideShowPasswordProvider>().showHide(),
            ),
            MyPadding.paddingOnly(
              top: 20,
              child: MyButton.MyElevatedButton(
                text: "Sign Up",
                onTap: () async => await FireBaseService.signUp(
                  email: _textEditingControllerEmail.text,
                  password: _textEditingControllerPassword.text,
                ),
              ),
            ),
            MyPadding.paddingOnly(
              top: 20,
              child: MyButton.MyElevatedButton(
                text: "Sign In",
                onTap: () async => await FireBaseService.signIn(
                  email: _textEditingControllerEmail.text,
                  password: _textEditingControllerPassword.text,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
