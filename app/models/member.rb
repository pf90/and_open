class Member < ApplicationRecord
  has_many :matches
  has_many :matched_members, through: :matches, dependent: :destroy

  validates :name, :original_url, presence: true
  validates :original_url, url: true
end
