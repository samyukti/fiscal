# Fiscal

Get the fiscal period attributes for various countries.

The gem extends the Date and Time classes to add a fiscal object,
which in turn provides additional objects and methods to find fiscal
year, half year, quarter and month, along with start and end dates.

Additionally, a prev and next methods are available to step through
fiscal periods.

The gem also supports fiscal calendars of different countries. Please
see examples for more details.

## Installation

Add this line to your application's Gemfile:

    gem 'fiscal'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fiscal

## Usage

The methods for fiscal periods are available both in Date and Time classes
as well as in the instances.

A typical usage would be:

    Date.today.fiscal.year.start
    Date.today.fiscal.quarter.prev.end

    Date.today.fiscal(country: :us).quarter.next.start
    Date.today.fiscal(country: :in).month.number

Alternatively a fiscal object can be created for further use.

    fiscal = Date.fiscal(date: '2014-01-01', country: :in)
    fiscal.year.start

    fiscal_month = Date.fiscal(date: '2014-01-01', country: :in).month
    fiscal_month.start
    fiscal_month.prev.end

## Contributing

1. Fork it ( http://github.com/samyukti/fiscal/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
