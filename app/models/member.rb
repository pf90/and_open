class Member < ApplicationRecord
  searchkick

  has_many :matches
  has_many :matched_members, through: :matches, dependent: :destroy

  validates :name, :original_url, presence: true
  validates :original_url, url: true

  def search_data
  {
    name: name,
  }
end
end
