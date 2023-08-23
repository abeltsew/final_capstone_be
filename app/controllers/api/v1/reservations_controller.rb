class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show update destroy]

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  def index
    @user_reservations = Reservation.where(user_id: params[:user_id])
    @reservations_info = []
    @user_reservations.each do |reservation|
      @reservations_info.push({
                                user: reservation.user.username,
                                room: reservation.room.name,
                                city: reservation.city.name,
                                date: reservation.date
                              })
    end
    render json: @reservations_info
  end
  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:room_id, :date, :city_id, :user_id)
  end
end
