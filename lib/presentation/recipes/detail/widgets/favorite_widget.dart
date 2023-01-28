import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_otus/presentation/recipes/bloc/recipe_bloc.dart';
import 'package:rive/rive.dart';

class FavoritesWidget extends StatefulWidget {
  final int id;
  final bool status;

  const FavoritesWidget({
    Key? key,
    required this.id,
    required this.status,
  }) : super(key: key);

  @override
  State<FavoritesWidget> createState() => _FavoritesWidgetState();
}

class _FavoritesWidgetState extends State<FavoritesWidget>
    with TickerProviderStateMixin {
  late AnimationController _controllerScale;
  late AnimationController _controllerColor;
  late RiveAnimationController _controllerRive;
  late Animation<Color?> _colorAnimation;

  late bool _status;
  var _countScale = 0;

  @override
  void initState() {
    super.initState();
    _status = widget.status;

    _controllerScale = AnimationController(
      vsync: this,
      lowerBound: 1,
      upperBound: 1.2,
      duration: const Duration(milliseconds: 150),
    );
    _controllerScale.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controllerScale.reverse();
      }
    });
    _controllerColor = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _controllerColor.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        setState(() {

        });
      }
    });
    _colorAnimation = ColorTween(begin: Colors.black, end: Colors.red)
        .animate(_controllerColor);
    if (_status) _controllerColor.value = 1;
    _controllerRive = OneShotAnimation(
      'ScaleAnim',
      autoplay: false,
      onStop: () async {
        if (_countScale >= 3) {
          _countScale = 0;
          await Future.delayed(const Duration(seconds: 5));
        }
        if (!_status) _controllerRive.isActive = true;
        _countScale++;
      },
    );
    if (!_status) {
      SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        _controllerRive.isActive = true;
      });
    }
  }

  @override
  void dispose() {
    _controllerScale.dispose();
    _controllerColor.dispose();
    _controllerRive.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Material(
        child: InkWell(
          splashFactory: NoSplash.splashFactory,
          highlightColor: Colors.transparent,
          onTap: () {
            _status = !_status;
            context.read<RecipeBloc>().add(AddFavorite(widget.id, _status));
            if (_status) {
              setState(() {});
            } else {
              _controllerScale.forward();
              _controllerColor.reverse();
            }

            SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
              if (_status) {
                _controllerScale.forward();
                _controllerColor.forward();
              } else {
                _countScale = 0;
                _controllerRive.isActive = true;
              }
            });
          },
          child: SizedBox(
            width: 35,
            height: 35,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: ScaleTransition(
                    scale: _controllerScale,
                    child: AnimatedBuilder(
                      animation: _colorAnimation,
                      builder: (context, _) => SvgPicture.asset(
                        "assets/images/favorite.svg",
                        width: 30,
                        height: 30,
                        color: _colorAnimation.value,
                      ),
                    ),
                  ),
                ),
                if (!_status)
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: RiveAnimation.asset(
                      "assets/animation/favorite.riv",
                      alignment: Alignment.center,
                      controllers: [_controllerRive],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
