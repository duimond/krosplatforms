import 'package:json_annotation/json_annotation.dart';
part 'article.g.dart';

@JsonSerializable()
class Article {
  Article({
    required this.id,
    required this.name,
    required this.description,
    required this.firstAppearance,
    //required this.creator,
  });

  final int id;
  final String name;
  final String description;
  final String firstAppearance;
  //final String creator;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
