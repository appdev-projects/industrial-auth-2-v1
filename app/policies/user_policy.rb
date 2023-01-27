class UserPolicy < ApplicationPolicy
  def feed?
    record == user
  end
end
