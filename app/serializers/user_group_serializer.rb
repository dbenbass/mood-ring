class UserGroupSerializer < ActiveModel::Serializer
  attributes :id, :date
  has_one :user
  has_one :group
  has_one :mood
end
