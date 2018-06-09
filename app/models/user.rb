class User < ApplicationRecord

  validates :full_name, presence: true

  belongs_to :team, :foreign_key => :team_id, class_name: 'Team'

end
