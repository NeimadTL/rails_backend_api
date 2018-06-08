class User < ApplicationRecord

  validates :full_name, presence: true
  validates :team_name, presence: true

  has_one :manager, :foreign_key => :manager_id, class_name: 'User'

end
