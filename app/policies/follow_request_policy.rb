class FollowRequestPolicy < ApplicationPolicy
  def create?
    record.sender_id == user.id
  end

  def show?
    true
  end
end
