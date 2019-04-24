class RoomsController < ApplicationController
  def index
    @rooms = Room.all.order('id DESC')
  end

  def new
    @room = Room.new
    @room.build_now
    @room.build_old
  end

  def create
    Room.create(room_params)
    redirect_to root_path
  end

  def show
    @room = Room.find(params[:id])
    @vote = Vote.new
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room.update(room_params)
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
  end

  private

  def room_params
    params.require(:room).permit(:name,
                                 now_attributes: [:name, :image],
                                 old_attributes: [:name, :image])
  end
end
