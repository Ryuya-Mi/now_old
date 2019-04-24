class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.references :room, foreign_key: true
      t.string :ip_address
      t.integer :type, default: 0, null: false
      t.timestamps
    end
  end
end
