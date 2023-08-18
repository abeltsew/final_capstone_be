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
    @room = Room.create(room_params)

    if @room.save
      render json: { message: 'Room created successfully' }, status: :created
    else
      render json: { message: 'Room creation failed' }, status: :unprocessable_entity
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, :description, :price, :user_id)
  end
end
