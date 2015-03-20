# CleanWords

A clean (i.e. "kid friendly") random word generator.

Currently the word list varies in size from 4 to 12 letters in length and consists mostly of words for animals, food, plants, and buildings.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'clean_words'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install clean_words

## Usage

```Ruby
words = CleanWords::Random.new

# Fetch a random word
words.fetch
#=> 'aspen'

# Fetch a number of random words
words.fetch(nil, 3)
#=> ['aspen', 'terrier', 'apple']

# Fetch a random word of a particular size
words.fetch(6)
#=> 'arctic'

# Fetch random words of an array of sizes
words.fetch([4,6], 2)
#=> ['arctic', 'fort']

# Fetch random words of a range of sizes
words.fetch((4..6), 4)
#=> ['fort', 'gopher', 'arctic', 'maple']

```

## Contributing

1. Fork it ( https://github.com/foraker/clean_words/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
  - NOTE: If adding words to `data/words.txt`, please execute `ruby util/sanitize_list.rb` from the project root before commiting.
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## About Foraker Labs

<img src="http://assets.foraker.com/foraker_logo.png" width="400" height="62">

This project is maintained by Foraker Labs. The names and logos of Foraker Labs are fully owned and copyright Foraker Design, LLC.

Foraker Labs is a Boulder-based Ruby on Rails and iOS development shop. Please reach out if we can [help build your product](http://www.foraker.com).
