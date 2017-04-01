module Fogsplode
  def self.readme(subgem)
    File.open('README.md', 'w') do |file|
      file.write <<-README
# #{subgem}

![Gem Version](https://badge.fury.io/rb/fog-#{subgem}.svg)
[![Build Status](https://travis-ci.org/fog/fog-#{subgem}.svg?branch=master)](https://travis-ci.org/fog/fog-#{subgem})
[![Dependency Status](https://gemnasium.com/fog/fog-#{subgem}.svg)](https://gemnasium.com/fog/fog-#{subgem})
[![Test Coverage](https://codeclimate.com/github/fog/fog-#{subgem})](https://codeclimate.com/github/fog/fog-#{subgem})
[![Code Climate](https://codeclimate.com/github/fog/fog-#{subgem}.svg)](https://codeclimate.com/github/fog/fog-#{subgem})

## Installation

Add this line to your application's Gemfile:

```ruby
gem '#{subgem}'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install #{subgem}

## Usage

Before you can use fog-#{subgem}, you must require it in your application:

  ```ruby
require 'fog/fog-#{subgem}'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment. Run `bundle exec fogsplode` to use the gem in this directory, ignoring other installed copies of this gem.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Getting Help

* [General Documentation](http://fog.io).
* [Provider Specific Documentation](http://fog.io/about/provider_documentation.html).
* Ask specific questions on [Stack Overflow](http://stackoverflow.com/questions/tagged/fog)
* Report bugs and discuss potential features in [Github issues](https://github.com/fog/fog/issues).

## Contributing

Please refer to [CONTRIBUTING.md](https://github.com/fog/fog/blob/master/CONTRIBUTING.md).

## License

Please refer to [LICENSE.md](https://github.com/fog/fog/blob/master/LICENSE.md).
README
    end

    `git commit -m "[fogsplode] readme"`
  end
end
