import 'package:json_annotation/json_annotation.dart';

part 'encrypted_key.g.dart';

@JsonSerializable()
class EncryptedKey {
  const EncryptedKey({
    required this.id,
    required this.userId,
    required this.secretKey,
    required this.keyVault,
    required this.createdAt,
    required this.updatedAt,
  });

  factory EncryptedKey.fromJson(Map<String, dynamic> json) => 
      _$EncryptedKeyFromJson(json);

  final String id;
  @JsonKey(name: 'userId')
  final String userId;
  final String secretKey;
  final String keyVault;
  final DateTime createdAt;
  final DateTime updatedAt;
}