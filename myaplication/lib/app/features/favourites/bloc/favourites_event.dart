part of "favourites_bloc.dart";

sealed class FavouritesEvent extends Equatable {
  const FavouritesEvent();
  @override
  List<Object?> get props => [];
}

class FavouritesGet extends FavouritesEvent {}

class FavouritesAdd extends FavouritesEvent {
  final int id;
  final String name;
  final String description;
  final String firstAppearance;

  const FavouritesAdd({
    required this.id,
    required this.name,
    required this.description,
    required this.firstAppearance,
  });

  @override
  List<Object?> get props => [id, name, description, firstAppearance];
}

class FavouritesDelete extends FavouritesEvent {
  final String name;
  const FavouritesDelete(this.name);

  @override
  List<Object?> get props => [name];
}

class CheckFavoriteEvent extends FavouritesEvent {
  final int id;

  const CheckFavoriteEvent(this.id);
}
