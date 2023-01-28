import 'package:flutter/material.dart';
import 'package:food_otus/domain/entities/recipe.dart';

class ItemRecipe extends StatelessWidget {
  final Recipe recipe;

  const ItemRecipe({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF959292).withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          ImageRecipe(width: 149, height: 136, image: recipe.photo),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Text(
                    recipe.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 21,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(child: TimeRecipe(time: recipe.duration)),
                    if (recipe.favorite != null)
                      Stack(
                        children: [
                          Image.asset(
                            "assets/images/favorite_rect.png",
                          ),
                          const Positioned(
                            top: 5,
                            right: 8,
                            child: Text(
                              "1",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 14,
                              ),
                            ),
                          )
                        ],
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ImageRecipe extends StatelessWidget {
  final double width;
  final double height;
  final String image;

  const ImageRecipe({
    Key? key,
    required this.width,
    required this.height,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
      height: height,
      width: width,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stacktrace) {
        return Image.asset(
          'assets/images/placeholder.png',
          height: height,
          width: width,
        );
      },
    );
  }
}

class TimeRecipe extends StatelessWidget {
  final int time;

  const TimeRecipe({
    Key? key,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/clock.png",
          width: 16,
        ),
        const SizedBox(width: 10),
        Text(
          _getTime(time),
          style: const TextStyle(
            color: Color(0xFF2ECC71),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  String _getTime(int time) {
    var hour = time ~/ 60;
    var minute = time - hour * 60;
    if (hour == 0) return "$minute ${_getMinute(minute)}";
    if (minute == 0) return "$hour час";
    return "$hour ${_getHour(hour)} $minute ${_getMinute(minute)}";
  }

  String _getMinute(int minute) {
    if (minute ~/ 10 != 1 && minute % 10 == 1) return "минута";
    if (minute ~/ 10 != 1 && minute % 10 >= 2 && minute % 10 <= 4) {
      return "минуты";
    }
    return "минут";
  }

  String _getHour(int hour) {
    if (hour ~/ 10 != 1 && hour % 10 == 1) return "час";
    if (hour ~/ 10 != 1 && hour % 10 >= 2 && hour % 10 <= 4) {
      return "часа";
    }
    return "часов";
  }
}
