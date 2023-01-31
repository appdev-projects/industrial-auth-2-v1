class FollowRequestPolicy < ApplicationPolicy
  def create?
    record.sender_id == user.id
  end

  def show?
    true
  end

  def destroy?
    record.sender_id == user.id
  end
end
