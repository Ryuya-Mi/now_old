class VotesController < ApplicationController
  def create
    room_id = params[:room_id]
    ip_address = request.remote_ip
    now_old = params[:vote][:now_old].to_i
    room = Room.find(room_id)

    unless Vote.all_ip.include?(ip_address)
      Vote.create(room_id: room_id, ip_address: ip_address, now_old: now_old)
      redirect_to room_path(room)
    else
      flash[:error] = '二回投票はできません'
      redirect_to room_path(room)
    end
  end
end
