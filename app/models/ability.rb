class Ability
  include CanCan::Ability

  def initialize(user)
    if user.is? :admin
      can :manage, :all
    elsif user.is? :site_manager
      can :manage, Record
      can :manage, Repository
      can :manage, Source
    end
  end
end
