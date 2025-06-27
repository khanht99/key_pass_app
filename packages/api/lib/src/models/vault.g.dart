// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'vault.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vault _$VaultFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Vault',
  json,
  ($checkedConvert) {
    final val = Vault(
      id: $checkedConvert('id', (v) => v as String),
      userId: $checkedConvert('user_id', (v) => v as String),
      name: $checkedConvert('name', (v) => v as String),
      key: $checkedConvert('key', (v) => v as String),
      value: $checkedConvert('value', (v) => v as String),
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
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
  },
);
