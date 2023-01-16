import 'package:flutter/material.dart';
import 'package:food_otus/domain/entities/step_recipe.dart';

class ItemStep extends StatefulWidget {
  final StepRecipe step;

  const ItemStep({
    Key? key,
    required this.step,
  }) : super(key: key);

  @override
  State<ItemStep> createState() => _ItemStepState();
}

class _ItemStepState extends State<ItemStep> with SingleTickerProviderStateMixin {
  late AnimationController _controllerScale;
  late bool _selected = false;

  @override
  void initState() {
    super.initState();
    _controllerScale = AnimationController(
      vsync: this,
      lowerBound: 1,
      upperBound: 1.5,
      duration: const Duration(milliseconds: 150),
    );
    _controllerScale.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controllerScale.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 120),
      decoration: BoxDecoration(
        color: const Color(0xFFECECEC),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15.0,
        ),
        child: Row(
          children: [
            const SizedBox(width: 24),
            Text(
              widget.step.number.toString(),
              style: const TextStyle(
                color: Color(0xFFC2C2C2),
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(width: 29),
            Expanded(
              child: Text(
                widget.step.name,
                style: const TextStyle(
                  color: Color(0xFF797676),
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(width: 24),
            Column(
              children: [
                ScaleTransition(
                  scale: _controllerScale,
                  child: Checkbox(
                    value: _selected,
                    onChanged: (value) {
                      _controllerScale.forward();
                      setState(() {
                        _selected = !_selected;
                      });
                    },
                    activeColor: const Color(0xFF165932),
                    side: const BorderSide(
                      color: Color(0xFF165932),
                      width: 3,
                    ),
                  ),
                ),
                Text(
                  _getTime(widget.step.duration),
                  style: const TextStyle(
                    color: Color(0xFF797676),
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 12),
          ],
        ),
      ),
    );
  }

  String _getTime(int time) {
    var hour = time ~/ 3600;
    var minute = time ~/ 60 - hour * 60;
    var seconds = time - minute * 60 - hour * 60;
    var result = "";
    if (hour > 0) result += hour < 10 ? "0$hour:" : "$hour:";
    result += minute < 10 ? "0$minute" : "$minute";
    result += seconds < 10 ? ":0$seconds" : ":$seconds";
    return result;
  }
}
