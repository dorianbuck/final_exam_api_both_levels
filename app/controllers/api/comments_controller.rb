class Api::CommentsController < ApplicationController
  def create
    binding.pry
    comment = Comment.create(comment_params)
    comment.save
    if comment.persist?
      render json: { message: 'You have successfully created a comment!' }
    else

      render json: { error: 'The comment was unfortunately not created' }
    end
  end

  private

  def comment_params
    params.require(:article).permit(:body)
  end
end
