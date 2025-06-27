// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'encrypted_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EncryptedKey _$EncryptedKeyFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'EncryptedKey',
      json,
      ($checkedConvert) {
        final val = EncryptedKey(
          id: $checkedConvert('id', (v) => v as String),
          userId: $checkedConvert('user_id', (v) => v as String),
          secretKey: $checkedConvert('secret_key', (v) => v as String),
          keyVault: $checkedConvert('key_vault', (v) => v as String),
          createdAt: $checkedConvert(
            'created_at',
            (v) => DateTime.parse(v as String),
          ),
          updatedAt: $checkedConvert(
            'updated_at',
            (v) => DateTime.parse(v as String),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'userId': 'user_id',
        'secretKey': 'secret_key',
        'keyVault': 'key_vault',
        'createdAt': 'created_at',
        'updatedAt': 'updated_at',
      },
    );
