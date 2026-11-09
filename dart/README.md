# Domain Expiration API - Dart/Flutter Client

Domain Expiration is a domain expiration checker API. Pass any domain and it reads the registry record over RDAP or WHOIS to return the days left until the domain expires, an expiration status from healthy to expired, and its age in days and years, with paid plans adding exact registration timestamps.

[![pub package](https://img.shields.io/pub/v/apiverve_domainexpiration.svg)](https://pub.dev/packages/apiverve_domainexpiration)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Domain Expiration API](https://apiverve.com/marketplace/domainexpiration?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_domainexpiration: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_domainexpiration/apiverve_domainexpiration.dart';

void main() async {
  final client = DomainexpirationClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'domain': 'myspace.com'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "domain": "myspace.com",
    "expirationDate": "2029-02-23T05:00:00Z",
    "daysToExpiration": 1164,
    "expirationStatus": "healthy",
    "createdDate": "1996-02-22T05:00:00Z",
    "lastUpdatedDate": "2023-01-17T00:16:21Z",
    "daysSinceLastUpdate": 1064,
    "domainAgeDays": 10890,
    "domainAgeYears": 29.8
  }
}
```

## API Reference

- **API Home:** [Domain Expiration API](https://apiverve.com/marketplace/domainexpiration?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/domainexpiration](https://docs.apiverve.com/ref/domainexpiration?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
