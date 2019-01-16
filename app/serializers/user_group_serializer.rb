class UserGroupSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :group
  has_one :mood
end
