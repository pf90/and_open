class Match < ApplicationRecord
  belongs_to :member
  belongs_to :matched_member, class_name: "Member"

  after_create :create_inverse, unless: :has_inverse?
  after_destroy :destroy_inverses, if: :has_inverse? 

  def create_inverse
    self.class.create(inverse_match_options)
  end

  def destroy_inverses
    inverses.destroy_all
  end

  def has_inverse?
    self.class.exists?(inverse_match_options)
  end

  def inverses
    self.class.where(inverse_match_options)
  end

  def inverse_match_options
    { matched_member_id: member_id, member_id: matched_member_id }
  end

end