class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.integer :name
      t.integer :numberofparticipants
      t.datetime :datecreated
      t.datetime :dateupdated
      t.string :location

      t.timestamps
    end
  end
end
