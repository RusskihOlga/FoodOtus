import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_otus/core/di.dart';
import 'package:food_otus/pages/profile/bloc/profile_bloc.dart';
import 'package:food_otus/pages/profile/widgets/item_profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<String> _devices = [];

  @override
  void dispose() {
    context.read<ProfileBloc>().add(StopLoad());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (_) =>
      appIns<ProfileBloc>()
        ..add(LoadData()),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 60),
              Container(
                width: 125,
                height: 125,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFF165932),
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(63),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Image.asset(
                    "assets/images/user_icon.png",
                  ),
                ),
              ),
              const SizedBox(height: 29),
              BlocBuilder<ProfileBloc, ProfileState>(
                buildWhen: (prevState, nextState) => nextState is ShowData,
                builder: (context, state) {
                  if (state is ShowData) {
                    return ItemProfile(
                      leftText: "Логин",
                      rightText: state.login,
                    );
                  }
                  return const SizedBox();
                },
              ),
              const SizedBox(height: 16),
              BlocBuilder<ProfileBloc, ProfileState>(
                buildWhen: (prevState, nextState) {
                  if (nextState is ShowDevice) {
                    _devices.add(nextState.device);
                    return true;
                  }

                  return false;
                },
                builder: (context, state) {
                  return ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return ItemProfile(
                        leftText: "Устройство",
                        rightText: _devices[index],
                      );
                    },
                    itemCount: _devices.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(height: 16);
                    },
                  );
                },
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 5,
                    shadowColor: const Color(0xFF959292).withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Выход",
                    style: TextStyle(
                      color: Color(0xFFF54848),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16)
            ],
          ),
        ),
      ),
    );
  }
}
