import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_otus/domain/entities/photo.dart';
import 'package:food_otus/domain/entities/recipe.dart';
import 'package:food_otus/pages/recipes/bloc/recipe_bloc.dart';
import 'package:go_router/go_router.dart';

class Gallery extends StatefulWidget {
  final Recipe recipe;

  const Gallery({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<RecipeBloc>().add(GetPhoto(widget.recipe.id));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<RecipeBloc, RecipeState>(
          buildWhen: (prevState, nextState) => nextState is ShowPhoto,
          builder: (context, state) {
            List<Photo> images = [];
            if (state is ShowPhoto) {
              images = state.photo;
            }

            return GridView.builder(
              itemBuilder: (context, index) => InkWell(
                onTap: () => context
                    .read<RecipeBloc>()
                    .add(GetDetectors(images[index].path)),
                child: Image.file(
                  File(images[index].path),
                  fit: BoxFit.cover,
                ),
              ),
              itemCount: images.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 2.0,
              ),
            );
          },
        ),
        const SizedBox(height: 20),
        InkWell(
          onTap: () {
            context.push('/camera', extra: {"id": widget.recipe.id});
          },
          child: Container(
            height: 50,
            width: 220,
            decoration: BoxDecoration(
                color: const Color(0xFF165932),
                borderRadius: BorderRadius.circular(25)),
            child: const Center(
              child: Text(
                "Добавить изображение",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
