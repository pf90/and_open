class Member < ApplicationRecord
  validates :name, :original_url, presence: true
  validates :original_url, url: true
end
