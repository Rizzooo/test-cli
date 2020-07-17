require 'open-uri'

class Scraper
  def index_scraper(index_url)
    html = Nokogiri::HTML(open(index_url))
    all_info = html.css('div#nationalMap-map map')
    all_info.map do |x|
      {name_one: x.css('area[alt = "Delaware"]').text,          # Will get entire area back
      name_two: x.css('area[alt = "Pennsylvania"]').text,
      name_three: x.css('area[alt = "New Jersey"]').text,
      }
  end
  
  def park_scraper(park_url)
    html = Nokogiri::HTML(open(park_url))
    info = html.css('div#parklistresultsArea ul#listparks')
    info.map do |y|
      {name: y.css('').text,
      type_of: y.css('').text, 
      description: y.css('').text
      }
  end
end



