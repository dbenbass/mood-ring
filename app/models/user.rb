# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :moods, through: :user_groups
  has_many :owned_groups, class_name: 'Group', foreign_key: 'owner_id'
end
