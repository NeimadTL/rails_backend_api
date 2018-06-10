class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :manager, :members

  def manager
    object.manager.full_name
  end

  def members
    members_array = []
    object.members.each do |member|
      members_array << member.full_name
    end
    members_array
  end
end
