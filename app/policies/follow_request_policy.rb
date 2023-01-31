class FollowRequestPolicy < ApplicationPolicy
  def create?
    record.sender_id == user.id
  end

  def show?
    true
  end

  def new?
    true
  end

  def destroy?
    record.sender_id == user.id
  end

  def update?
    record.sender_id == user.id
  end

  def edit?
    record.sender_id == user.id
  end
end
