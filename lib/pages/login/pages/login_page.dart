import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_otus/core/di.dart';
import 'package:food_otus/pages/login/bloc/login_bloc.dart';
import 'package:food_otus/pages/login/widgets/button.dart';
import 'package:food_otus/pages/login/widgets/custom_input.dart';
import 'package:food_otus/pages/main/nav_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _login = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => appIns<LoginBloc>(),
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is Error) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.error),
            ));
          } else if (state is Success) {
            context.read<NavBloc>().add(ChangeAuth());
            context.go("/recipe");
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
                    return const CircularProgressIndicator(color: Colors.white);
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
                            const SizedBox(height: 40),
                            Button(
                              title: "Войти",
                              click: () => context.read<LoginBloc>().add(
                                    SignInEvent(_login.text, _password.text),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      ButtonText(
                        title: "Зарегистрироваться",
                        click: () => context.go("/registration"),
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
