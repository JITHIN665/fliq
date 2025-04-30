// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      messageReceivedFromPartnerAt:
          json['message_received_from_partner_at'] as String?,
      authUserId: (json['auth_user_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
      countryId: (json['country_id'] as num?)?.toInt(),
      countryName: json['country_name'] as String?,
      stateId: (json['state_id'] as num?)?.toInt(),
      stateName: json['state_name'] as String?,
      cityId: (json['city_id'] as num?)?.toInt(),
      cityName: json['city_name'] as String?,
      customCityName: json['custom_city_name'] as String?,
      isActive: json['is_active'] as bool?,
      customerCode: json['customer_code'] as String?,
      isPremiumCustomer: json['is_premium_customer'] as bool?,
      isOnline: json['is_online'] as bool?,
      dateOfBirth: json['date_of_birth'] as String?,
      nativeLanguageId: (json['native_language_id'] as num?)?.toInt(),
      nativeLanguageName: json['native_language_name'] as String?,
      profilePhotoUrl: json['profile_photo_url'] as String?,
      square100ProfilePhotoUrl: json['square100_profile_photo_url'] as String?,
      square300ProfilePhotoUrl: json['square300_profile_photo_url'] as String?,
      square500ProfilePhotoUrl: json['square500_profile_photo_url'] as String?,
      age: (json['age'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'message_received_from_partner_at': instance.messageReceivedFromPartnerAt,
      'auth_user_id': instance.authUserId,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'country_id': instance.countryId,
      'country_name': instance.countryName,
      'state_id': instance.stateId,
      'state_name': instance.stateName,
      'city_id': instance.cityId,
      'city_name': instance.cityName,
      'custom_city_name': instance.customCityName,
      'is_active': instance.isActive,
      'customer_code': instance.customerCode,
      'is_premium_customer': instance.isPremiumCustomer,
      'is_online': instance.isOnline,
      'date_of_birth': instance.dateOfBirth,
      'native_language_id': instance.nativeLanguageId,
      'native_language_name': instance.nativeLanguageName,
      'profile_photo_url': instance.profilePhotoUrl,
      'square100_profile_photo_url': instance.square100ProfilePhotoUrl,
      'square300_profile_photo_url': instance.square300ProfilePhotoUrl,
      'square500_profile_photo_url': instance.square500ProfilePhotoUrl,
      'age': instance.age,
    };
