[![Build Status](https://travis-ci.org/MirkoMignini/wordpress_theme_finder.png?branch=master)](https://travis-ci.org/MirkoMignini/wordpress_theme_finder)
[![Gem Version](https://badge.fury.io/rb/wordpress_theme_finder.svg)](https://badge.fury.io/rb/wordpress_theme_finder)
[![Coverage Status](https://coveralls.io/repos/MirkoMignini/wordpress_theme_finder/badge.svg?branch=master&service=github)](https://coveralls.io/github/MirkoMignini/wordpress_theme_finder?branch=master)

wordpress_theme_finder
===================

Gem to check if a website is built with wordpress and get theme informations.

## Requirements

* Ruby 1.9+

## Installation

Add it to your Gemfile:

`gem 'wordpress_theme_finder'`

Then:

`bundle`

## Usage

Call check function of WordpressThemeFinder, param is url.

```ruby
result = WordpressThemeFinder.check(site_url)
```

If result is null website is not built with wordpress.

If not null result contains a hash with one ore more of the following keys:
* Theme Name
* Theme URI
* Author
* Author URI
* Description
* Version
* License
* License URI
* Tags
* Text Domain

## Contributing

1. Fork it ( http://github.com/MirkoMignini/wordpress_theme_finder/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

MIT License. Copyright 2015 by Mirko Mignini (https://github.com/MirkoMignini)
