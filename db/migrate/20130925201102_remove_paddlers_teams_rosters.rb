class RemovePaddlersTeamsRosters < ActiveRecord::Migration
  def change
    drop_table :paddlers
    drop_table :rosters
    drop_table :paddlers_rosters_tables
  end
end
