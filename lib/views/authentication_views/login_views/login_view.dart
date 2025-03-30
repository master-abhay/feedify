import 'package:feedify/core/components/text_fields/custom_text_field.dart';
import 'package:feedify/core/constants/app_dimensions.dart';
import 'package:feedify/core/widgets/auth_background.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: _buildUi(context: context, theme: theme),
    );
  }

  Widget _buildUi({required BuildContext context, required ThemeData theme}) {
    return AuthBackground(
      child: ListView(
        padding: kPadding,
        children: [
          const Text(
            "Login",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),

          extraLargeHeightSizedBox,

          /// email
          CustomTextField(
            focusNode: emailFocusNode,
            nextFocusNode: passwordFocusNode,
            icon: Icons.mark_email_read_rounded,
            labelText: "Email",
            hintText: "Enter your email",
          ),


          mediumHeightSizedBox,

          /// password
          CustomTextField(
            focusNode: passwordFocusNode,
            icon: Icons.password,
            obscureText: true,
            labelText: "Password",
            hintText: "Enter your password",
          ),

          mediumHeightSizedBox,


        ],
      ),
    );
  }
}
