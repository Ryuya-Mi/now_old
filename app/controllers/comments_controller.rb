class CommentsController < ApplicationController
  def create
    room_id = params[:room_id]
    room = Room.find(room_id)
    Comment.create(room_id: room_id, text: params[:comment][:text])
    redirect_to room_path(room)
  end
end
