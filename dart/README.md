# Domain Expiration API - Dart/Flutter Client

Domain Expiration Checker is a simple tool for checking the expiration date and age of a domain. It returns the expiration date and age of the domain provided.

[![pub package](https://img.shields.io/pub/v/apiverve_domainexpiration.svg)](https://pub.dev/packages/apiverve_domainexpiration)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Domain Expiration API](https://domainexpiration.apiverve.com?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_domainexpiration: ^1.1.14
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
    "daysToExpiration": 1463,
    "createdDate": "1996-02-22T05:00:00Z",
    "lastUpdatedDate": "2023-01-17T00:16:21Z",
    "daysSinceLastUpdate": 765,
    "domainAgeDays": 10591
  }
}
```

## API Reference

- **API Home:** [Domain Expiration API](https://domainexpiration.apiverve.com?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/domainexpiration](https://docs.apiverve.com/ref/domainexpiration?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
