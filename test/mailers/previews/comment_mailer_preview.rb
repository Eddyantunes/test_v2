# Preview all emails at http://localhost:3000/rails/mailers/comment_mailer
class CommentMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/comment_mailer/new_Comment
  def new_Comment
    comment = Comment.last
    CommentMailer.new_Comment(comment)
  end

end
