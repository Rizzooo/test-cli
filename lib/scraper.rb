require 'open-uri'
require 'nokogiri'
require './lib/nat_parks/states'


class Scraper
  def self.state_scraper_pa
    html = Nokogiri::HTML(open("https://everything-everywhere.com/national-park-service-sites-in-pennsylvania/"))
    all_info = html.css('div.inside-article')
    all_info.map do |x|
      x.css('h1.entry-title').text
    end
  end
  
  def self.state_scraper_nj
    html = Nokogiri::HTML(open("https://www.travelchannel.com/interests/national-parks/articles/national-parks-in-new-jersey"))
    all_info = html.css('section.o-AssetTitle h1.o-AssetTitle__a-Headline')
    all_info.map do |x|
      x.css('span.o-AssetTitle__a-HeadlineText').text
    end
  end

  def self.first_pa_scrape       
    html = Nokogiri::HTML(open("https://www.pennlive.com/life/2018/08/how_many_of_the_26_national_pa.html"))
    article = html.css('div.entry-content')
    @first_park = article.map do |x|
      x.css('p#YCLJ2SBMTNC2LB4QKMBKO7WR2Y b').text
    end
  end 
  
  def self.second_pa_scrape
    html = Nokogiri::HTML(open("https://www.pennlive.com/life/2018/08/how_many_of_the_26_national_pa.html"))
    article = html.css('div.entry-content')
    @second_park = article.map do |x|
      x.css('p#HXAGVUL6AVB3ZHXWNTJA367G5A b').text
    end
  end
  
  def self.third_pa_scrape
    html = Nokogiri::HTML(open("https://www.pennlive.com/life/2018/08/how_many_of_the_26_national_pa.html"))
    article = html.css('div.entry-content')
    @third_park = article.map do |x|
      x.css('p#BNYYZFZLYRETBL3IMEE3JBQD24 b').text
    end
  end

  def self.first_nj_scrape
    html = Nokogiri::HTML(open("https://www.nj.com/education/2016/08/njs_12_national_park_sites_how_many_have_you_visit.html"))
    article = html.css('div.entry-content')
    @first_park_nj = article.map do |x|
      x.css('p#XYPPRKAPERGXRM4RUM55ZCF4HU strong').text
    end
  end
  
  def self.second_nj_scrape
    html = Nokogiri::HTML(open("https://www.nj.com/education/2016/08/njs_12_national_park_sites_how_many_have_you_visit.html"))
    article = html.css('div.entry-content')
    @second_park_nj = article.map do |x|
      x.css('p#ORG5ZCXZSNFSTHZXTUBHV6H7VI strong').text
    end
  end
  
  def self.third_nj_scrape
    html = Nokogiri::HTML(open("https://www.nj.com/education/2016/08/njs_12_national_park_sites_how_many_have_you_visit.html"))
    article = html.css('div.entry-content')
    @third_park_nj = article.map do |x|
      x.css('p#427TEMKFL5BCHBBRYYDRVZSUJE strong').text
    end
  end
end