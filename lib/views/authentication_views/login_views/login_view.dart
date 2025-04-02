import 'package:feedify/blocs/blocs.dart';
import 'package:feedify/core/components/components.dart';
import 'package:feedify/core/constants/constants.dart';
import 'package:feedify/core/extensions/extensions.dart';
import 'package:feedify/core/widgets/auth_background.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:feedify/core/themes/themes.dart';
import 'package:feedify/core/components/buttons/buttons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:feedify/core/services/services.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  final ValueNotifier<bool> _passwordVisible = ValueNotifier<bool>(false);

  late LoginBloc _loginBloc;

  @override
  void initState() {
    _loginBloc = LoginBloc();
    super.initState();
  }

  @override
  void dispose() {
    _loginBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider<LoginBloc>(
      create: (_) => _loginBloc,
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: _buildUi(context: context, theme: theme),
      ),
    );
  }

  Widget _buildUi({required BuildContext context, required ThemeData theme}) {
    return AuthBackground(
      child: Form(
        key: _formKey,
        child: ListView(
          padding: kPadding,
          children: [
            Text(
              context.l10n.login,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),

            extraLargeHeightSizedBox,

            /// email
            CustomTextField(
              controller: emailController,
              focusNode: emailFocusNode,
              nextFocusNode: passwordFocusNode,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mark_email_read_rounded,
                ),
              ),
              labelText: context.l10n.email,
              hintText: context.l10n.emailHint,
              validator: (value) {
                if (value!.isEmpty) {
                  return context.l10n.emailHint;
                }
                return null;
              },
            ),

            mediumHeightSizedBox,

            /// password
            ValueListenableBuilder(
                valueListenable: _passwordVisible,
                builder: (context, value, child) {
                  return CustomTextField(
                    controller: passwordController,
                    focusNode: passwordFocusNode,
                    suffixIcon: IconButton(
                      onPressed: () {
                        _passwordVisible.value = !_passwordVisible.value;
                      },
                      icon: CustomAnimatedSwitcher(
                        value: value,
                        trueChild: const Icon(
                          Icons.visibility_outlined,
                          key: ValueKey('visible'),
                        ),
                        falseChild: const Icon(
                          Icons.visibility_off_outlined,
                          key: ValueKey('hidden'),
                        ),
                      ),
                    ),
                    obscureText: value,
                    labelText: context.l10n.password,
                    hintText: context.l10n.passwordHint,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return context.l10n.passwordHint;
                      }
                      return null;
                    },
                  );
                }),

            /// forgot password
            RichText(
              textAlign: TextAlign.end,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: context.l10n.forgotYourPassword,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: AppColors.brightRed,
                      fontSize: 15,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  )
                ],
              ),
            ),

            xxlSizedBox,

            /// login button
            BlocConsumer<LoginBloc, LoginState>(
              builder: (context, state) {
                return CommonButton(
                  text: context.l10n.login,
                  tooltip: context.l10n.loginTooltip,
                  isLoading: state.apiResponse.apiStatus == ApiStatus.loading,
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      context.read<LoginBloc>().add(
                            LoginButtonEvent(
                              email: emailController.text,
                              password: passwordController.text,
                            ),
                          );
                    }
                  },
                );
              },
              listener: (context, state) {
                if (state.apiResponse.apiStatus == ApiStatus.error) {
                  getIt<BaseAlertService>()
                      .showErrorAlert(state.apiResponse.message ?? '');
                }
                if (state.apiResponse.apiStatus == ApiStatus.success) {
                  getIt<BaseAlertService>()
                      .showSuccessAlert(state.apiResponse.data ?? '');
                }
              },
            ),

            extraSmallSizedBox,

            /// already have account
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: context.l10n.doNotHaveAnAccount,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontSize: 15,
                    ),
                  ),
                  TextSpan(
                    text: " ${context.l10n.signUp}",
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontSize: 15,
                      color: AppColors.brightRed,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
