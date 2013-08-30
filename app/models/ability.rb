class Ability
  include CanCan::Ability

  def initialize(user)
    if user.is? :admin
      can :manage, :all
    elsif user.is? :site_manager
      can :manage, Record
      can :manage, Repository
      can :manage, Source
    else
      # Repository Editor
      unless user.repositories.empty?
        can :read, Repository, id: user.repository_ids
        can :create, Record
        can :manage, Record, id: user.record_ids
      end

      # Repository Manager
      can [:edit, :update, :destroy], Repository,
          id: user.repository_ids,
          members: {user_id: user.id, manager: true}
    end
  end
end
