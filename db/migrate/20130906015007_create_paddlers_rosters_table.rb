class CreatePaddlersRostersTable < ActiveRecord::Migration
  def change
    create_table :paddlers_rosters_tables do |t|
      t.references :paddler
      t.references :roster
    end
  end
end
