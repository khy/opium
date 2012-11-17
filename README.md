# Celluloid::OPM

Celluloid::OPM automatically serializes and persists any calls made to a Celluloid object, allowing for a [prevalent system](http://www.ibm.com/developerworks/library/wa-objprev/).

## Installation

Add this line to your application's Gemfile:

    gem 'celluloid-opm'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install celluloid-opm

## Usage

    class Document
      include Celluloid::OPM

      ...

    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
