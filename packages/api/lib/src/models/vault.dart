import 'package:json_annotation/json_annotation.dart';

part 'vault.g.dart';

@JsonSerializable()
class Vault {
  const Vault({
    required this.id,
    required this.userId,
    required this.name,
    required this.key,
    required this.value,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Vault.fromJson(Map<String, dynamic> json) => _$VaultFromJson(json);

  final String id;
  final String userId;
  final String name;
  final String key;
  final String value;
  final DateTime createdAt;
  final DateTime updatedAt;

}