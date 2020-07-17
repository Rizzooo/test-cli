require 'open-uri'

class Scraper
  def index_scraper(index_url)
    html = Nokogiri::HTML(open(index_url))
    all_info = html.css('div.col-md-9 col-sm-9 col-xs-12 table-cell list_left')
    all_info.map do |x|
      {name: x.css('div.col-md-9 col-sm-9 col-xs-12 table-cell list_left h3').text,
      type: x.css('div.col-md-9 col-sm-9 col-xs-12 table-cell list_left h2').text, 
      description: x.css('div.col-md-9 col-sm-9 col-xs-12 table-cell list_left p').text
  end
  
  def park_scraper(park_url)
    html = Nokogiri::HTML(open(park_url))
    info = html.css('div.ColumnMain col-sm-12')
    info.map do |y|
      html.css('div.ContentHeader text-content-size h1.page-title')
  end
end

<div class="ContentHeader text-content-size">
<h1 class="page-title">The American Indians</h1>
</div>

