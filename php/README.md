# Domain Expiration API - PHP Package

Domain Expiration Checker is a simple tool for checking the expiration date and age of a domain. It returns the expiration date and age of the domain provided.

## Installation

Install via Composer:

```bash
composer require apiverve/domainexpiration
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Domainexpiration\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['domain' => 'myspace.com']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Domainexpiration\Client;
use APIVerve\Domainexpiration\Exceptions\APIException;
use APIVerve\Domainexpiration\Exceptions\ValidationException;

try {
    $response = $client->execute(['domain' => 'myspace.com']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/domainexpiration?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://domainexpiration.apiverve.com?utm_source=php&utm_medium=readme](https://domainexpiration.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
