import 'package:json_annotation/json_annotation.dart';

part 'todos_response.g.dart';

@JsonSerializable()
class TodosResponse {
  final int? userId;
  final int? id;
  final String? title;
  final bool? completed;

  TodosResponse({this.userId, this.id, this.title, this.completed});

  factory TodosResponse.fromJson(Map<String, dynamic> json) =>
      _$TodosResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TodosResponseToJson(this);
}
