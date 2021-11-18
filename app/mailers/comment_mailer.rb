class CommentMailer < ApplicationMailer

  def new_Comment(comment)
    @comment = comment
    @item = @comment.item

    mail to: @item.user.user_email,
    subject: "New Comment for #{@item.user_name}
  end
end
