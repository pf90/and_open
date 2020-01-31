require 'open-uri'
require 'nokogiri'

class HeadingScraper

  def scrape(id, url)
    doc = Nokogiri::HTML(open(url))
    ['h1', 'h2', 'h3'].each do |heading_type|
      doc.search(heading_type).each do |heading|
        Header.create(heading_type: heading_type, detail: heading.text, member_id: id)
      end
    end
  end

end