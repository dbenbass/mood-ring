class Mood < ApplicationRecord
  has_many :groups, through: :user_groups
  has_many :user_groups
end
