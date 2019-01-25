class AddOwnerToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :owner_id, :bigint, foreign_key: true
  end
end
