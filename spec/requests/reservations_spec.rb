require 'rails_helper'

RSpec.describe 'Reservations', type: :request do
  before(:each) do
    @user = User.create(username: 'johnd')
    @room = Room.create(name: 'King size', user: @user, price: 456)
    @city = City.create(name: 'London')
    @reservation = Reservation.create(room_id: @room.id, user_id: @user.id, date: Date.today, city_id: @city.id)
  end

  describe 'GET /index' do
    it 'returns http success' do
      get '/api/v1/reservations/'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /api/v1/reservations' do
    let(:valid_attributes) do
      {
        reservation: {
          room_id: @room.id,
          user_id: @user.id,
          date: Date.today,
          city_id: @city.id
        }
      }
    end

    context 'when the request is valid' do
      before { post '/api/v1/reservations', params: valid_attributes }

      it 'creates a new reservation' do
        expect(response).to have_http_status(:created)
      end
    end

    context 'when the request is invalid' do
      before { post '/api/v1/reservations', params: { reservation: { room_id: @room.id } } }

      it 'returns a validation failure message' do
        expect(response.body).to match(/must exist/)
      end
    end
  end
end
