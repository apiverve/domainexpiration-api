# Domain Expiration API - Ruby Gem

Domain Expiration is a domain expiration checker API. Pass any domain and it reads the registry record over RDAP or WHOIS to return the days left until the domain expires, an expiration status from healthy to expired, and its age in days and years, with paid plans adding exact registration timestamps.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_domainexpiration'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_domainexpiration
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_domainexpiration'

# Initialize the client
client = APIVerve::Domainexpiration::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ domain: "myspace.com" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ domain: "myspace.com" })
  puts response["data"]
rescue APIVerve::Domainexpiration::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Domainexpiration::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Domainexpiration::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/domainexpiration?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/domainexpiration?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/domainexpiration?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
