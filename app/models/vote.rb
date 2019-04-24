class Vote < ApplicationRecord
  enum now_old: {draft: 0, old: 1, now: 2}
  belongs_to :room

  #
  # @return [Array<Integer>] 全てのIPアドレスの配列
  #
  def self.all_ip
    all.map(&:ip_address)
  end

  #
  # @return [Array<Vote>]
  #
  def self.old_by_room(room_id)
    where(room_id: room_id, now_old: 1)
  end

  #
  # @return [Array<Vote>] 全てのIPアドレスの配列
  #
  def self.now_by_room(room_id)
    where(room_id: room_id, now_old: 2)
  end
end
