class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :numberofparticipants, :datecreated, :dateupdated, :location,
  :moods, :averagemood

  def averagemood
    Mood.average(:level)
   end
end

#could add method in Serializer - def average mood blahblah code to return average moods

# get user group data
# write function to search for ones with specific group id
# items that have that spefic group id then will be searched for their mood id
# those mood ids push into array
# average that array
#
#
# write ajax request to index user group table
#
#
#
# write loop searching for group id
# push into an array
# return array
#
# write another function that pulls out mood ids
# that's another array
# use array of mood ids to get level of moods in the group
# put those in an array
# average
