class ChangeGroupsToString < ActiveRecord::Migration[5.2]
  def up
    change_column :groups, :name, :string
  end

  def down
    change_column :groups, :name, :integer
  end
end
