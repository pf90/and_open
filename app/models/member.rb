class Member < ApplicationRecord
  searchkick

  has_many :matches
  has_many :matched_members, through: :matches, dependent: :destroy
  has_many :headers

  before_save :set_short_url, if: :original_url_changed?
  after_create :scrape_headings

  validates :name, :original_url, presence: true
  validates :original_url, url: true

  def search_data
    { name: name }
  end

  def set_short_url
    self.short_url = Bitly.client.shorten(original_url).short_url
  end

  def scrape_headings
    HeadingScraper.new.scrape(id, original_url)
  end
end
