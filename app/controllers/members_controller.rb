class MembersController < InheritedResources::Base
  load_and_authorize_resource
  before_filter :set_user, only: :create

  def set_user
    @member.user ||= current_user
    unless can? :manage, Member
      @member.user = current_user
    end
  end

  def toggle_activity
    if can? :toggle, Member
      @member.toggle!(:active)
      @member.save
      redirect_to members_path
    end
  end

  def toggle_manager
    if can? :toggle, Member
      @member.toggle!(:manager)
      @member.save
      redirect_to members_path
    end
  end
end
