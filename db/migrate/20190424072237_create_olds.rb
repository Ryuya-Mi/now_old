class CreateOlds < ActiveRecord::Migration[5.2]
  def change
    create_table :olds do |t|
      t.references :room, foreign_key: true
      t.string :name
      t.string :image
      t.timestamps
    end
  end
end
