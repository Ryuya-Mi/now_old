class Room < ApplicationRecord
  has_one :now
  has_one :old
  has_many :votes
  accepts_nested_attributes_for :now
  accepts_nested_attributes_for :old
end
