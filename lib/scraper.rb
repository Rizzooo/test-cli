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
    
    b_park = article.map do |x|
      { name: x.css('p#HXAGVUL6AVB3ZHXWNTJA367G5A b').text
      }
    end
    
    c_park = article.map do |x|
      { name: x.css('p#BNYYZFZLYRETBL3IMEE3JBQD24 b').text
      }
    end
    
    puts "#{a_park}"
    puts "#{b_park}"
    puts "#{c_park}"
  end
  
  def self.parks_nj_scrape
    html = Nokogiri::HTML(open("https://www.nj.com/education/2016/08/njs_12_national_park_sites_how_many_have_you_visit.html"))
    article = html.css('div.entry-content')
    a_parknj = article.map do |x|
      { name: x.css('p#XYPPRKAPERGXRM4RUM55ZCF4HU strong').text
      }
    end
    
    b_parknj = article.map do |x|
      { name: x.css('p#ORG5ZCXZSNFSTHZXTUBHV6H7VI strong').text
      }
    end
    
    c_parknj = article.map do |x|
      { name: x.css('p#427TEMKFL5BCHBBRYYDRVZSUJE strong').text
      }
    end
    
    puts "#{a_parknj}"
    puts "#{b_parknj}"
    puts "#{c_parknj}"
  end
end