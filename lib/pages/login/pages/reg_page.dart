import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_otus/core/di.dart';
import 'package:food_otus/pages/login/bloc/login_bloc.dart';
import 'package:food_otus/pages/login/widgets/button.dart';
import 'package:food_otus/pages/login/widgets/custom_input.dart';
import 'package:go_router/go_router.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _login = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  void dispose() {
    _login.dispose();
    _password.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => appIns<LoginBloc>(),
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is Error) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.error),
            ));
          } else if (state is Success) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Регисрация успешно завершена"),
            ));
            context.go("/login");
          }
        },
        child: Scaffold(
          backgroundColor: const Color(0xFF2ECC71),
          body: SafeArea(
            child: Center(
              child: BlocBuilder<LoginBloc, LoginState>(
                buildWhen: (prevState, nextState) {
                  return nextState is Error || nextState is Loading;
                },
                builder: (context, state) {
                  if (state is Loading) {
                    return const CircularProgressIndicator();
                  }
                  return Column(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Otus.Food",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                            const SizedBox(height: 60),
                            CustomInput(
                              hint: "логин",
                              prefix: "profile",
                              controller: _login,
                            ),
                            const SizedBox(height: 16),
                            CustomInput(
                              hint: "пароль",
                              prefix: "password",
                              hideText: true,
                              controller: _password,
                            ),
                            const SizedBox(height: 16),
                            CustomInput(
                              hint: "пароль еще раз",
                              prefix: "password",
                              hideText: true,
                              controller: _confirmPassword,
                            ),
                            const SizedBox(height: 40),
                            Button(
                              title: "Регистрация",
                              click: () =>
                                  context.read<LoginBloc>().add(
                                    SignUpEvent(
                                      _login.text,
                                      _password.text,
                                      _confirmPassword.text,
                                    ),
                                  ),
                            )
                          ],
                        ),
                      ),
                      ButtonText(
                        title: "Войти в приложение",
                        click: () => context.go("/login"),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
