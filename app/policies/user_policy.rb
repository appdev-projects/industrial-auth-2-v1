class UserPolicy < ApplicationPolicy
  def feed?
    record == user
  end

  def show?
    true
  end
end
