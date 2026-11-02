/// Domain Expiration API client for Dart/Flutter
///
/// Domain Expiration is a domain expiration checker API. Pass any domain and it reads the registry record over RDAP or WHOIS to return the days left until the domain expires, an expiration status from healthy to expired, and its age in days and years, with paid plans adding exact registration timestamps.
///
/// For more information, visit: https://apiverve.com/marketplace/domainexpiration?utm_source=dart&utm_medium=referral&utm_content=readme
library apiverve_domainexpiration;

export 'src/client.dart';
export 'src/models.dart';
