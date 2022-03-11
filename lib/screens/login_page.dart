import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vazifa_jira_1/core/constant/size_config.dart';
import 'package:vazifa_jira_1/core/widgets/my_appbar_widget.dart';
import 'package:vazifa_jira_1/core/widgets/my_elevated_buttons.dart';
import 'package:vazifa_jira_1/core/widgets/my_padding.dart';
import 'package:vazifa_jira_1/core/widgets/my_textstyle.dart';
import 'package:vazifa_jira_1/model/data.dart';
import 'package:vazifa_jira_1/provider/hide_show_password_provider.dart';
import 'package:vazifa_jira_1/service/service.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
      body: Form(
        key: _formKey,
        child: MyPadding.paddingSymmetric(
          horizontal: 20,
          vertical: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyPadding.paddingSymmetric(
                vertical: 20,
                child: Text(
                  "Email",
                  style: MyTextStyle.simpleStyle(size: 35),
                ),
              ),
              TextFormField(
                validator: (v) => emailValidate(v!),
                controller: _textEditingControllerEmail,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Email",
                ),
              ),
              MyPadding.paddingSymmetric(
                vertical: 20,
                child: Text(
                  "Password",
                  style: MyTextStyle.simpleStyle(size: 35),
                ),
              ),
              TextFormField(
                validator: (v) => passwordValidate(v!),
                obscureText: context.watch<HideShowPasswordProvider>().isShow,
                controller: _textEditingControllerPassword,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                ),
              ),
              MyPadding.paddingOnly(
                top: 20,
                child: MyButton.MyElevatedButton(
                  text: "Sign Up",
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      bool a = await FireBaseService.signUp(
                        email: _textEditingControllerEmail.text,
                        password: _textEditingControllerPassword.text,
                      );
                      a ? debugPrint("Home pagedasize!") : debugPrint("no");
                    }
                  },
                ),
              ),
              MyPadding.paddingOnly(
                top: 20,
                child: MyButton.MyElevatedButton(
                  text: "Sign In",
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      bool a = await FireBaseService.signIn(
                        email: _textEditingControllerEmail.text,
                        password: _textEditingControllerPassword.text,
                      );
                      a ? debugPrint("Home pagedasize!") : debugPrint("no");
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  passwordValidate(String v) {
    if (v.length < 6) {
      return 'Login or password invalid !';
    }
  }

  emailValidate(String v) {
    if (!RegExp(MyData.myExp()).hasMatch(v)) {
      return 'Login or password invalaid !';
    }
  }
}
