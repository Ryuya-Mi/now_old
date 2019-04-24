class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :room, foreign_key: true
      t.text :text, not_null: true
      t.timestamps
    end
  end
end
