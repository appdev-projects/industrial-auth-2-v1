class UserPolicy < ApplicationPolicy
  def feed?
    user == record
  end

  def show?
    true
  end

  def discover?
    true
  end

  def show_photos?
    user == record || !record.private? || @record.followers.include?(user)
  end

  def liked?
    user == record || !record.private? || @record.followers.include?(user)
  end

  def show_likes?
    user == record || !record.private? || @record.followers.include?(user)
  end
end
