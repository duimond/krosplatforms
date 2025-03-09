// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article1 _$ArticleFromJson(Map<String, dynamic> json) => Article1(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      firstAppearance: json['firstAppearance'] as String,
      creator: json['creator'] as String,
    );

Map<String, dynamic> _$ArticleToJson(Article1 instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'firstAppearance': instance.firstAppearance,
      'creator': instance.creator,
    };
