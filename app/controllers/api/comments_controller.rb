class Api::CommentsController < ApplicationController
  def post
    resource :articles do
      resource :comments
    end
  end
end
