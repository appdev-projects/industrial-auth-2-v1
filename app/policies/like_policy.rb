class LikePolicy < ApplicationPolicy
  attr_reader :user, :like

  def initialize(user, like)
    @user = user
    @like = like
  end

  # to review
  def show?
    user == like.owner ||
      !like.owner.private? ||
      like.owner.followers.include?(user)
  end

end
