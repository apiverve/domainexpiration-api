/// Response models for the Domain Expiration API.

/// API Response wrapper.
class DomainexpirationResponse {
  final String status;
  final dynamic error;
  final DomainexpirationData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  DomainexpirationResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory DomainexpirationResponse.fromJson(Map<String, dynamic> json) => DomainexpirationResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? DomainexpirationData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Domain Expiration API.

class DomainexpirationData {
  String? domain;
  String? expirationDate;
  num? daysToExpiration;
  String? expirationStatus;
  String? createdDate;
  String? lastUpdatedDate;
  num? daysSinceLastUpdate;
  num? domainAgeDays;
  num? domainAgeYears;

  DomainexpirationData({
    this.domain,
    this.expirationDate,
    this.daysToExpiration,
    this.expirationStatus,
    this.createdDate,
    this.lastUpdatedDate,
    this.daysSinceLastUpdate,
    this.domainAgeDays,
    this.domainAgeYears,
  });

  factory DomainexpirationData.fromJson(Map<String, dynamic> json) => DomainexpirationData(
      domain: json['domain'],
      expirationDate: json['expirationDate'],
      daysToExpiration: json['daysToExpiration'],
      expirationStatus: json['expirationStatus'],
      createdDate: json['createdDate'],
      lastUpdatedDate: json['lastUpdatedDate'],
      daysSinceLastUpdate: json['daysSinceLastUpdate'],
      domainAgeDays: json['domainAgeDays'],
      domainAgeYears: json['domainAgeYears'],
    );
}

class DomainexpirationRequest {
  String domain;

  DomainexpirationRequest({
    required this.domain,
  });

  Map<String, dynamic> toJson() => {
      'domain': domain,
    };
}
