class Api::V1::RoomsController < ApplicationController
  def index
    render json: { message: 'rooms here' }
  end
end
