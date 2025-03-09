import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myaplication/domain/repository/favourites/favourites_repository_interface.dart';

class FavouritesService extends FavouritesServiceInterface {
  FavouritesService({required this.dio});
  final Dio dio;

  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');
  final CollectionReference favorites =
      FirebaseFirestore.instance.collection('favorites');

  @override
  Future<void> addFavorite({
    required int id,
    required String name,
    required String description,
    required String firstAppearance,
  }) async {
    try {
      await favorites
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('favourites')
          .doc(name)
          .set({
        'id': id, // ТУТ ПОМЕНЯЛ
        'name': name,
        'description': description,
        'firstAppearance': firstAppearance,
      });
    } on FirebaseException catch (e) {
      throw e.message.toString();
    }
  }

  @override
  Future<List<Map<String, dynamic>>> getFavorites() async {
    try {
      QuerySnapshot snapshot = await favorites
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('favourites')
          .get();
      return snapshot.docs
          .map((doc) => doc.data() as Map<String, dynamic>)
          .toList();
    } on FirebaseException catch (e) {
      throw e.message.toString();
    }
  }

  @override
  Future<void> deleteFavorite(String name) async {
    try {
      await favorites
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('favourites')
          .doc(name)
          .delete();
    } on FirebaseException catch (e) {
      throw e.message.toString();
    }
  }

  // @override
  // Future<bool> isFavorite(String id) async {
  //   List<Map<String, dynamic>> favorites = await getFavorites();
  //   return favorites.any((favorite) => favorite['id'] == id);
  // }
}
