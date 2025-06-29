import 'package:json_annotation/json_annotation.dart';

part 'folder.g.dart';

@JsonSerializable()
class Folder {
  final String id;
  final String name;
  final String createdAt;
  final String updatedAt;

  Folder({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Folder.fromJson(Map<String, dynamic> json) => _$FolderFromJson(json);
}