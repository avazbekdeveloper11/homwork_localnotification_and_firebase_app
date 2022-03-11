import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vazifa_jira_1/provider/hide_show_password_provider.dart';

class MyTextForumFiled extends StatelessWidget {
  String? hintText;
  bool? obscureText;

  IconData? suffixIcon;
  Function()? suffixOntap;
  FormFieldValidator<String>? validator;
  TextEditingController? textEditingController;

  MyTextForumFiled({
    Key? key,
    this.hintText,
    this.validator,
    this.suffixIcon,
    this.suffixOntap,
    this.obscureText = true,
    this.textEditingController,
  }) : super(key: key);

  @override
  TextFormField build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: textEditingController,
      obscureText: obscureText!
          ? false
          : context.watch<HideShowPasswordProvider>().isShow,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        hintText: hintText,
        suffixIcon: IconButton(
          icon: Icon(suffixIcon),
          onPressed: suffixOntap,
          splashRadius: 20,
        ),
      ),
    );
  }
}
