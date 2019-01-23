class UserGroup < ApplicationRecord
  belongs_to :user
  belongs_to :group
  belongs_to :mood

  validates_uniqueness_of :group_id, scope: :user_id,
                          message: "can only submit one mood"
end
