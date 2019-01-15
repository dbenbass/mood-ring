class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :numberofparticipants, :datecreated, :dateupdated, :location
end
