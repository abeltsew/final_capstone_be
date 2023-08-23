class Api::V1::RoomsController < ApplicationController
  def index
    @rooms = Room.all
    render json: @rooms
  end

  def show
    @room = Room.find(params[:id])

    render json: @room
  end

  def create
    @room = Room.new(room_params)

    if @room.save
      render json: @room, status: :created
    else
      render json: { errors: @room.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    begin
      @room = Room.find(params[:id])
      if @room.destroy
        render json: @room, status: :ok
      end
    rescue
      msg = {
        id: params[:id],
        name: params[:name],
        message: "room not found",
        room_list: Room.all
      }
      render json: msg, status: :ok
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, :image, :description, :price, :user_id)
  end
end
