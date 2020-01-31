class Header < ApplicationRecord
  belongs_to :member

  enum heading_type: [:h1, :h2, :h3]

end