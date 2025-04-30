import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'message_received_from_partner_at')
    String? messageReceivedFromPartnerAt,
    @JsonKey(name: 'auth_user_id') int? authUserId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'country_id') int? countryId,
    @JsonKey(name: 'country_name') String? countryName,
    @JsonKey(name: 'state_id') int? stateId,
    @JsonKey(name: 'state_name') String? stateName,
    @JsonKey(name: 'city_id') int? cityId,
    @JsonKey(name: 'city_name') String? cityName,
    @JsonKey(name: 'custom_city_name') String? customCityName,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'customer_code') String? customerCode,
    @JsonKey(name: 'is_premium_customer') bool? isPremiumCustomer,
    @JsonKey(name: 'is_online') bool? isOnline,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'native_language_id') int? nativeLanguageId,
    @JsonKey(name: 'native_language_name') String? nativeLanguageName,
    @JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,
    @JsonKey(name: 'square100_profile_photo_url')
    String? square100ProfilePhotoUrl,
    @JsonKey(name: 'square300_profile_photo_url')
    String? square300ProfilePhotoUrl,
    @JsonKey(name: 'square500_profile_photo_url')
    String? square500ProfilePhotoUrl,
    @JsonKey(name: 'age') int? age,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}
