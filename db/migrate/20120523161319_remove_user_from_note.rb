class RemoveUserFromNote < ActiveRecord::Migration
  def change
    remove_column :notes, :user
  end
end
