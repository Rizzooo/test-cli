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

  def self.parks_pa_scrape       
   
    html = Nokogiri::HTML(open("https://www.pennlive.com/life/2018/08/how_many_of_the_26_national_pa.html"))
    article = html.css('div.entry-content')
    a_park = article.map do |x|
      { name: x.css('p#YCLJ2SBMTNC2LB4QKMBKO7WR2Y b').text
      }
    end
    puts "#{a_park}"
  end
  
  def self.parks_nj_scrape
    html = Nokogiri::HTML(open("https://www.travelchannel.com/interests/national-parks/articles/national-parks-in-new-jersey"))
    article = html.css('div.customRTE smartbody-core section')
    a_parknj = article.map do |x|
      { name: x.css('section.o-CustomRTE h2')
      }
    end
    a_parknj
  end
end