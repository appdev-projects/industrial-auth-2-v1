class FollowRequestPolicy < ApplicationPolicy
  attr_reader :user, :follow_request

  def initialize(user, follow_request)
    @user = user
    @follow_request = follow_request
  end

  # to review
  def show?
    user == follow_request.owner ||
      !follow_request.owner.private? ||
      follow_request.owner.followers.include?(user)
  end

  # before_action :ensure_current_user_is_owner, only: [:destroy, :edit, :update]
  # if current_user != @follow_request.sender && current_user != @follow_request.recipient

end
