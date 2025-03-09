import 'dart:async';

abstract class FavouritesServiceInterface {
  Future<void> addFavorite(
      {required int id,
      required String name,
      required String description,
      required String firstAppearance});

  Future<List<Map<String, dynamic>>> getFavorites();

  Future<void> deleteFavorite(String name);

  //Future<bool> isFavorite(String id);
}
