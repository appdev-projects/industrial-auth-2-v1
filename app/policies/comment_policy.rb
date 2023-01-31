class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment

  def initialize(user, comment)
    @user = user
    @comment = comment
  end

  def create?
    #photo = Photo.find(params.fetch(:comment).fetch(:photo_id))
    #user == photo.owner || 
     # !photo.owner.private? ||
      #photo.owner.followers.include?(user)

    user == comment.owner || 
     !comment.owner.private? ||
      comment.owner.followers.include?(user)
      
  end

  def edit?
    user == comment.author
  end

  def update?
    user == comment.author
  end

  def destroy?
    user == comment.author || 
      user == comment.owner 
  end


end
