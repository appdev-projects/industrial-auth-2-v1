class PhotoPolicy < ApplicationPolicy
  def show?
    user == record.owner || !record.owner.private? || record.owner.followers.include?(user)
  end
  def edit?
    user == record.owner
  end
  def update?
    user == record.owner
  end
  def delete?
    user == record.owner
  end
  def create?
    user == record.owner
  end
  def new?
    true
  end
  def index?
    false
  end
end
