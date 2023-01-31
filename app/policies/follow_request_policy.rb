class FollowRequestPolicy < ApplicationPolicy
  attr_reader :user, :follow_request

  def initialize(user, follow_request)
    @user = user
    @follow_request = follow_request
  end

  # Only recipient can edit and update
  def edit?
    user == follow_request.recipient
  end

  def update?
    user == follow_request.recipient
  end

  # The sender and recipient can destroy
  def destroy?
    user == follow_request.sender ||
      user == follow_request.recipient
  end


end
