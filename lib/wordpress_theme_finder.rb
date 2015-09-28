require 'nokogiri'
require 'open-uri'

module WordpressThemeFinder

  def self.check(url)
    doc = Nokogiri::HTML(open('https://wp-themes.com/twentyfifteen/'))
    style_css = doc.xpath("//link[@rel='stylesheet' and contains(@href, 'style.css')]/@href").first

    values = Hash.new

    source = open(style_css){|f|f.read}
    source.each_line do |line|
      ['Theme Name', 'Theme URI', 'Author', 'Author URI', 'Description', 'Version', 'License', 'License URI', 'Tags', 'Text Domain'].each do |key|
        values[key] = line.gsub("#{key}:", '').strip if line.match("#{key}:") && values[key].nil?
      end
    end

    if values.has_key?('Tags')
      values['Tags'] = values['Tags'].split(',').map!(&:strip)
    end

    values
  end

end
