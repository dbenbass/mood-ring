class UserGroupSerializer < ActiveModel::Serializer
  attributes :id, :countid
  has_one :user
  has_one :group
  has_one :mood

  def countid
    scope == object.user
  end
end
