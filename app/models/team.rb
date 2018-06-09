class Team < ApplicationRecord

  validates :name, presence: true

  belongs_to :manager, :foreign_key => :manager_id, class_name: 'User', optional: true
  has_many :members, :foreign_key => :team_id, class_name: 'User'

end
