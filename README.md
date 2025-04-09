# kinopoisk_unofficial_api_client

Ruby wrapper for [Kinopoisk Unofficial API](https://kinopoiskapiunofficial.tech/documentation/api/).

[![Gem Version](https://badge.fury.io/rb/kinopoisk_unofficial_api_client.svg)](http://badge.fury.io/rb/kinopoisk_unofficial_api_client)
[![Build Status](https://github.com/prisioner/kinopoisk_unofficial_api_client/actions/workflows/main.yml/badge.svg)](https://github.com/prisioner/kinopoisk_unofficial_api_client/actions)

## Installation

Add following line to your Gemfile:

```ruby
gem 'kinopoisk_unofficial_api_client', '~> 1.0.0'
```

And then execute:

```shell
bundle
```

Or install it system-wide:

```shell
gem install kinopoisk_unofficial_api_client
```

## Usage

First things first, you need to [obtain an Api Key](https://kinopoiskapiunofficial.tech/) for your client.
Then create your API Client like this:

```ruby
require 'kinopoisk_unofficial_api_client'

api_key = 'YOUR_KINOPOISK_UNOFFICIAL_API_API_KEY'

client = KinopoiskUnofficialApiClient::Client.new(api_key)

shawshank_redemption = client.film(id: 326)

# attributes accessible with snake_case methods
shawshank_redemption.kinopoisk_id     # => 326
shawshank_redemption.imdb_id          # => "tt0111161"
shawshank_redemption.rating_kinopoisk # => 9.1
shawshank_redemption.rating_imdb      # => 9.3
shawshank_redemption.name_ru          # => "Побег из Шоушенка"
shawshank_redemption.name_original    # => "The Shawshank Redemption"

# attributes accessible with hash keys
shawshank_redemption[:kinopoisk_id]    # => 326
shawshank_redemption[:name_original]   # => "The Shawshank Redemption"

# #to_h also converts to hash
shawshank_redemption.to_h # => {kinopoisk_id: 326, kinopoisk_hdid:  ...}

# nested objects accessible
shawshank_redemption.countries.first.country # => "США"

# keys could be in snake or camel cases
# genres and countries could be passed with names or ids
# ids could be obtained via client.film_filters
query_params = {
  genres: 'фантастика', # case insensitive, ids, strings and symbols allowed
  type: :tv_series,     # case insensitive, strings and symbols allowed
  rating_from: 7.5,     # float and integers allowed
  rating_to: 10,        # float and integers allowed
  year_from: 2019,
  year_to: 2024,
  countries: 'Россия',  # case insensitive, ids, strings and symbols allowed
  keyword: 'деревня'
}

# will provoke request with following params:
# https://kinopoiskapiunofficial.tech/api/v2.2/films
#   ?countries=34
#   &genres=6
#   &keyword=%D0%B4%D0%B5%D1%80%D0%B5%D0%B2%D0%BD%D1%8F
#   &order=RATING
#   &page=1
#   &ratingFrom=7.5
#   &ratingTo=10
#   &type=TV_SERIES
#   &yearFrom=2019
#   &yearTo=2024

movies = client.movie(query_params)
```

Implemented all endpoints of API v2.2.

Mapping client method names to endpoints available in [lib/kinopoisk_unofficial_api_client/endpoints.rb](lib/kinopoisk_unofficial_api_client/endpoints.rb)

## Overriding countries and genres name-to-id mapping

If you want override mapping

1. Actual mapping could be learned from [data/countries.json](data/countries.json) and [data/genres.json](data/genres.json)

2. Make your own `.json` files

```json
// my_genres.json
[
  {
    "id": 10,
    "genre": "Western"
  },
  {
    "id": 13,
    "genre": "Comedy"
  },
  {
    "id": 6,
    "genre": "Sci-Fi"
  }
]

// my_countries.json
[
  {
    "id": 1,
    "country": "USA"
  },
  {
    "id": 3,
    "country": "France"
  },
  {
    "id": 33,
    "country": "USSR"
  },
  {
    "id": 34,
    "country": "Russia"
  }
]
```

4. Configure gem

```ruby
KinopoiskUnofficialApiClient.configure do |config|
  config.genres = JSON.parse(File.read("my_genres.json"), symbolize_names: true)
  config.countries = JSON.parse(File.read("my_countries.json"), symbolize_names: true)
end
```

5. You can use your names in client.films

```ruby
client.films(genres: :western, countries: 'USA')
```

## Proxy

You can set up your own proxy and use it to access Kinopoisk Unofficial API.
In this case you need to configure API URL:

```ruby
KinopoiskUnofficialApiClient::Client.run(api_key, url: 'https://proxy.example.com') do |bot|
  # ...
end
```

## Connection adapters

We rely on [faraday](https://github.com/lostisland/faraday) under the hood.
You can use any of supported adapters (for example, `net/http/persistent`):

```ruby
require 'net/http/persistent'

KinopoiskUnofficialApiClient.configure do |config|
  config.adapter = :net_http_persistent
end
```

## Contributing

1. Fork it.
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin my-new-feature`).
5. Create a new Pull Request.
