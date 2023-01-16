import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_otus/domain/entities/recipe.dart';
import 'package:food_otus/pages/main/nav_bloc.dart';
import 'package:food_otus/pages/recipes/bloc/recipe_bloc.dart';
import 'package:food_otus/pages/recipes/detail/widgets/gallery.dart';
import 'package:food_otus/pages/recipes/detail/widgets/item_ingredient.dart';
import 'package:food_otus/pages/recipes/detail/widgets/item_step.dart';
import 'package:food_otus/pages/recipes/widgets/favorite_widget.dart';
import 'package:food_otus/pages/recipes/widgets/item_recipe.dart';
import 'package:go_router/go_router.dart';

class DetailsPage extends StatefulWidget {
  final Recipe recipe;

  const DetailsPage({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<NavBloc>().add(GetStatusAuth());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RecipeBloc, RecipeState>(
      listener: (context, state) {
        if (state is ShowDetectors) {
          context.push('/details_photo', extra: {
            "file": state.image,
            "detectors": state.detectors,
          });
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Рецепт",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          actions: [Image.asset("assets/images/megaphone.png")],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 38.0, left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.recipe.name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          BlocBuilder<NavBloc, NavState>(
                            buildWhen: (_, state) => state is ShowAuth,
                            builder: (context, state) {
                              if (state is ShowAuth && state.isAuth) {
                                return FavoritesWidget(
                                  id: widget.recipe.id,
                                  status: widget.recipe.favorite != null,
                                );
                              }
                              return const SizedBox();
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      TimeRecipe(time: widget.recipe.duration),
                      const SizedBox(height: 16),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: ImageRecipe(
                          width: double.infinity,
                          height: 220,
                          image: widget.recipe.photo,
                        ),
                      ),
                      if (widget.recipe.ingredients.isNotEmpty)
                        const TitleBlock(title: "Ингредиенты"),
                      if (widget.recipe.ingredients.isNotEmpty)
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFF797676),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: ListView.separated(
                            shrinkWrap: true,
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 15,
                            ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              height: 15,
                            ),
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, index) => ItemIngredient(
                              ingredient: widget.recipe.ingredients[index],
                            ),
                            itemCount: widget.recipe.ingredients.length,
                          ),
                        ),
                      if (widget.recipe.steps.isNotEmpty)
                        const TitleBlock(title: "Шаги приготовления"),
                      if (widget.recipe.steps.isNotEmpty)
                        ListView.separated(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 15,
                          ),
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) => ItemStep(
                            step: widget.recipe.steps[index],
                          ),
                          itemCount: widget.recipe.steps.length,
                        ),
                      const SizedBox(height: 20),
                      Gallery(recipe: widget.recipe),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                //CommentsBlock(comments: widget.recipe.comments),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TitleBlock extends StatelessWidget {
  final String title;

  const TitleBlock({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF165932),
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 18),
      ],
    );
  }
}

/*class CommentsBlock extends StatefulWidget {
  final List<CommentJson> comments;

  const CommentsBlock({Key? key, required this.comments}) : super(key: key);

  @override
  State<CommentsBlock> createState() => _CommentsBlockState();
}

class _CommentsBlockState extends State<CommentsBlock> {
  late List<CommentJson> _comments;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _comments = widget.comments;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),
        const Divider(
          height: 1,
          color: Color(0xFF797676),
        ),
        ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 25,
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 15,
          ),
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => ItemComment(
            comment: _comments[index],
          ),
          itemCount: _comments.length,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 2,
            //textAlignVertical: TextAlignVertical.top,
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF165932),
                  width: 2,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF165932),
                  width: 2,
                ),
              ),
              hintText: "оставить комментарий",
              suffixIcon: Container(
                width: 24,
                padding: const EdgeInsets.only(right: 12),
                alignment: Alignment.topRight,
                child: Image.asset("assets/images/image.png"),
              ),
            ),
            textInputAction: TextInputAction.send,
            controller: _controller,
            onSubmitted: (value) {
              setState(() {
                _comments.add(CommentJson(
                  date: DateTime.now(),
                  avatar: "avatar",
                  name: "avatar",
                  image: "image1_big",
                  message: value,
                ));
              });

              _controller.text = "";
            },
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}*/
