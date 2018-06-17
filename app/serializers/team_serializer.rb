class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :manager, :members

  def manager
    object.manager.full_name
  end

  def members
    object.members.map { |member| member.full_name }
  end
end
