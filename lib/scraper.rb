require 'open-uri'
require 'nokogiri'
require './lib/nat_parks/states'


class Scraper
  def self.state_scraper_pa
    html = Nokogiri::HTML(open("https://everything-everywhere.com/national-park-service-sites-in-pennsylvania/"))
    all_info = html.css('div.inside-article')
    all_info.map do |x|
      { name: x.css('h1.entry-title').text }
    end
  end
  
  def self.state_scraper_nj
    html = Nokogiri::HTML(open("https://www.travelchannel.com/interests/national-parks/articles/national-parks-in-new-jersey"))
    all_info = html.css('section.o-AssetTitle h1.o-AssetTitle__a-Headline')
    all_info.map do |x|
      { name: x.css('span.o-AssetTitle__a-HeadlineText').text }
    end
  end

  
  
  #def park_scraper(park_url)
  #  html = Nokogiri::HTML(open(park_url))
  #  info = html.css('div#parklistresultsArea ul#listparks')
  #  info.map do |y|
  #    {name: y.css('').text,
  #    type_of: y.css('').text, 
  #    description: y.css('').text
  #    }
  #end
end



