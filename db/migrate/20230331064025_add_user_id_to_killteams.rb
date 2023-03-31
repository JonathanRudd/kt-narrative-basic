class AddUserIdToKillteams < ActiveRecord::Migration[7.0]
  def change
    add_column :killteams, :user_id, :integer
  end
end
