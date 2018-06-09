class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :manager_id, :default => nil, :null => true

      t.timestamps
    end
  end
end
