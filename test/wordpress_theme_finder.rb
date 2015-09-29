require 'minitest/autorun'
require_relative '../lib/wordpress_theme_finder'

class TestAll < Minitest::Test
  def test_not_wordpress_site
    result = WordpressThemeFinder.check('http://www.google.com')
    assert_nil result
  end

  def test_wordpress_site
    result = WordpressThemeFinder.check('https://wp-themes.com/twentyfifteen/')
    assert_kind_of Hash, result

    assert_equal 'Twenty Fifteen', result['Theme Name']
  end
end