class CommentPolicy < ApplicationPolicy
  def create?
    record.author == user
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    record.author == user
  end

  def update?
    record.author == user
  end

  def edit?
    record.author == user
  end

  def destroy?
    record.author == user
  end
end
