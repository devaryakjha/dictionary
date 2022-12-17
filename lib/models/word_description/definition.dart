import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'definition.g.dart';

@JsonSerializable()
class Definition extends Equatable {
  final String? definition;
  final List<dynamic>? synonyms;
  final List<dynamic>? antonyms;

  const Definition({this.definition, this.synonyms, this.antonyms});

  factory Definition.fromJson(Map<String, dynamic> json) {
    return _$DefinitionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DefinitionToJson(this);

  Definition copyWith({
    String? definition,
    List<dynamic>? synonyms,
    List<dynamic>? antonyms,
  }) {
    return Definition(
      definition: definition ?? this.definition,
      synonyms: synonyms ?? this.synonyms,
      antonyms: antonyms ?? this.antonyms,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [definition, synonyms, antonyms];
}
