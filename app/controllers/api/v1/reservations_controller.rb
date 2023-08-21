class Api::V1::ReservationsController < ApplicationController
    before_action :set_reservation, only: [:show, :update, :destroy]

    def create
      @reservation = Reservation.new(reservation_params.merge(user_id: params[:user_id]))

      if @reservation.save
        render json: @reservation, status: :created
      else
        render json: @reservation.errors, status: :unprocessable_entity
      end
    end

    def index
      @user_reservations = Reservation.where(user_id: params[:user_id])
      render json: @user_reservations
    end


    private

    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    def reservation_params
      params.require(:reservation).permit(:room_id, :date, :city_id)
    end
  end
