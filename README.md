# Lock Ness Monster

Lock all your gem versions down!

Does your Gemfile look like this?

```ruby
gem 'rails'
gem 'date_validator'
gem 'unicorn'
gem 'newrelic_rpm'
gem 'pg'
gem 'formtastic'
gem 'will_paginate'
gem 'rails-i18n'
gem 'omniauth-oauth2'
gem 'figaro'
gem "rails-backbone"
gem 'pry-rails'
gem 'cancan'
gem 'i18n-js'
gem 'airbrake'
gem 'dalli'
gem 'gmaps4rails'
gem 'axlsx'
```

Lock_ness_monster will turn it into this!


```ruby
gem 'rails', '3.2.13'
gem 'date_validator', '~> 0.6.3'
gem 'unicorn', '~> 4.5.0'
gem 'pg', '~> 0.14.0'
gem 'formtastic', '~> 2.2.1'
gem 'will_paginate', '~> 3.0.3'
gem 'rails-i18n', '~> 0.6.5'
gem 'omniauth-oauth2', '~> 1.1.1'
gem 'figaro', '~> 0.4.1'
gem "rails-backbone", '~> 0.7.2'
gem 'pry-rails', '~> 0.2.1'
gem 'cancan', '~> 1.6.8'
gem 'i18n-js', '~> 2.1.2'
gem 'airbrake', '~> 3.1.6'
gem 'dalli', '~> 2.3.0'
gem 'gmaps4rails', '~> 1.5.6'
gem 'axlsx', '~> 1.3.4'
```

## Installation

```bash
$ gem install lock_ness_monster
```
## Usage

Navigate to your project directory and run:

```bash
$ lock_ness_monster
```

## Credits

[![Nilenso](https://s3.amazonaws.com/nilenso/nilenso.png)](http://nilenso.com)
