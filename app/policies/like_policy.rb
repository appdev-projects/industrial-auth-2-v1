class LikePolicy < ApplicationPolicy
  attr_reader :user, :like

  def initialize(user, like)
    @user = user
    @like = like
  end

  def create?
    user == like.owner ||
      !like.owner.private? ||
      like.owner.followers.include?(user)
  end


  def destroy?
    user == like.owner ||
      user == like.fan
  end

end
