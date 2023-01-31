class PhotoPolicy < ApplicationPolicy
  attr_reader :user, :photo

  def initialize(user, photo)
    @user = user
    @photo = photo
  end

  # Our policy is that a photo should only be seen by the owner or followers
  #   of the owner, unless the owner is not private in which case anyone can
  #   see it
  def show?
    user == photo.owner ||
      !photo.owner.private? ||
      photo.owner.followers.include?(user)
  end

  #before_action :ensure_current_user_is_owner, only: [:destroy, :update, :edit]

  def edit?
    user == photo.owner
  end

  def update?
    user == photo.owner
  end

  def destroy?
    user == photo.owner
  end

end
