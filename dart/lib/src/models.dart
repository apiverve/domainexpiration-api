/// Response models for the Domain Expiration API.

/// API Response wrapper.
class DomainexpirationResponse {
  final String status;
  final dynamic error;
  final DomainexpirationData? data;

  DomainexpirationResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory DomainexpirationResponse.fromJson(Map<String, dynamic> json) => DomainexpirationResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? DomainexpirationData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Domain Expiration API.

class DomainexpirationData {
  String? domain;
  String? expirationDate;
  int? daysToExpiration;
  String? createdDate;
  String? lastUpdatedDate;
  int? daysSinceLastUpdate;
  int? domainAgeDays;

  DomainexpirationData({
    this.domain,
    this.expirationDate,
    this.daysToExpiration,
    this.createdDate,
    this.lastUpdatedDate,
    this.daysSinceLastUpdate,
    this.domainAgeDays,
  });

  factory DomainexpirationData.fromJson(Map<String, dynamic> json) => DomainexpirationData(
      domain: json['domain'],
      expirationDate: json['expirationDate'],
      daysToExpiration: json['daysToExpiration'],
      createdDate: json['createdDate'],
      lastUpdatedDate: json['lastUpdatedDate'],
      daysSinceLastUpdate: json['daysSinceLastUpdate'],
      domainAgeDays: json['domainAgeDays'],
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
