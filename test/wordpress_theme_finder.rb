require 'minitest/autorun'
require_relative '../lib/wordpress_theme_finder'

class TestAll < Minitest::Test
  def test_module

    WordpressThemeFinder

    result = WordpressThemeFinder.check('https://wp-themes.com/twentyfifteen/')
    p result
    #assert_equal true, false
  end
end