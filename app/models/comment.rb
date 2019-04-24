class Comment < ApplicationRecord
  belongs_to :room

  def self.all_by_room(room_id)
    where(room_id: room_id)
  end
end
