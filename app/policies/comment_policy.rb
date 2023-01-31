class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment

  def initialize(user, comment)
    @user = user
    @comment = comment
  end

  #To review!
  def show?
    user == comment.owner ||
      !comment.owner.private? ||
      comment.owner.followers.include?(user)
  end

end
