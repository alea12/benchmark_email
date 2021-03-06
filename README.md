# BenchmarkEmail [![Gem Version](https://badge.fury.io/rb/benchmark_email.svg)](https://badge.fury.io/rb/benchmark_email) [![Build Status](https://travis-ci.org/alea12/benchmark_email.svg?branch=master)](https://travis-ci.org/alea12/benchmark_email) [![Coverage Status](https://coveralls.io/repos/github/alea12/benchmark_email/badge.svg?branch=master)](https://coveralls.io/github/alea12/benchmark_email?branch=master)

Ruby client to interact with Benchmark Email API v3. This gem is heavily under construction and supports only limited endpoints of [Benchmark Email API](https://developer.benchmarkemail.com/). Your help is always welcome 😍

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'benchmark_email'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install benchmark_email

## Usage

Before using this gem, you have to [sign up to Benchmark Email](https://ui.benchmarkemail.com/register) and [obtain your API Token](https://ui.benchmarkemail.com/Integrate#API).

```ruby
require 'benchmark_email'
client = BenchmarkEmail::Client.new('YOUR_API_TOKEN')
puts client.get_contact_lists
```

Alternatively, you can provide your API Token using environment variable:

```sh
$ export BENCHMARK_EMAIL_API_TOKEN='YOUR_API_TOKEN'
```

With environment variable being set, you can initialize `BenchmarkEmail::Client` without parameters:

```ruby
client = BenchmarkEmail::Client.new
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/alea12/benchmark_email.
