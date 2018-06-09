class RenameManagerIdToTeamIdOnUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :manager_id, :team_id
  end
end
