class CreatePaddlersRostersTable < ActiveRecord::Migration
  def change
    create_table :paddlers_rosters_tables do |t|
      t.belongs_to :paddler
      t.belongs_to :roster
    end
  end
end
