class CreatePaddlers < ActiveRecord::Migration
  def change
    create_table :paddlers do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :weight
      t.string :side
      t.timestamps
    end
  end
end
