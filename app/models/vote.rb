class Vote < ApplicationRecord
  enum now_old: {draft: 0, old: 1, now: 2}
  belongs_to :room

  #
  # @return [Array<Integer>] 全てのIPアドレスの配列
  #
  def self.all_ip
    Vote.all.map(&:ip_address)
  end
end
