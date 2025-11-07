import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/recipe.dart';
import '../l10n/app_localizations.dart';
import '../utils/localization_helper.dart';

class DetailScreen extends StatelessWidget {
  final Recipe recipe;
  final String heroTag;
  const DetailScreen({super.key, required this.recipe, required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildSliverAppBar(context),
          _buildSectionTitle(context, AppLocalizations.of(context)!.detailIngredients),
          _buildIngredientsList(context),
          _buildSectionTitle(context, AppLocalizations.of(context)!.detailSteps),
          _buildStepsList(context),
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
        ],
      ),
    );
  }

  Widget _buildSliverAppBar(BuildContext context) {
    final recipeName = LocalizationHelper.getText(context, recipe.nameKey);

    return SliverAppBar(
      expandedHeight: 300.0,
      floating: false,
      pinned: true,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          recipeName,
          style: const TextStyle(shadows: [
            Shadow(color: Colors.black54, blurRadius: 8, offset: Offset(0, 2))
          ]),
        ),
        titlePadding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
        centerTitle: false,
        background: Hero(
          tag: heroTag,
          child: CachedNetworkImage(
            imageUrl: recipe.imageUrl,
            fit: BoxFit.cover,
            placeholder: (context, url) =>
                Container(color: Colors.grey[300]),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return SliverToBoxAdapter(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0, bottom: 8.0),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildIngredientsList(BuildContext context) {
    final ingredients = LocalizationHelper.getList(context, recipe.ingredientKeys);

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold)),
                Expanded(
                  child: Text(
                    ingredients[index],
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          );
        },
        childCount: ingredients.length,
      ),
    );
  }

  Widget _buildStepsList(BuildContext context) {
    final steps = LocalizationHelper.getList(context, recipe.stepKeys);

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 14,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Text(
                    '${index + 1}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    steps[index],
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.4),
                  ),
                ),
              ],
            ),
          );
        },
        childCount: steps.length,
      ),
    );
  }
}