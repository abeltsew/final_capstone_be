require 'rails_helper'

RSpec.describe 'Rooms', type: :request do
  before(:each) do
    @user = User.create(username: 'johnd')
    @room = Room.create(name: 'King size', user: @user, price: 456)
  end

  describe 'GET /index' do
    it 'returns http success' do
      get '/api/v1/rooms/'
      expect(response).to have_http_status(:success)
      room_data = JSON.parse(response.body)
      expect(room_data[0]['name']).to eq('King size')
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get "/api/v1/rooms/#{@room.id}"
      expect(response).to have_http_status(:success)
      room_data = JSON.parse(response.body)
      expect(room_data['name']).to eq('King size')
    end
  end

  describe 'POST /api/v1/rooms' do
    let(:valid_attributes) do
      {
        room: {
          name: 'from Api',
          description: 'description from Api',
          price: 783,
          user_id: @user.id
        }
      }
    end

    context 'when the request is valid' do
      before { post '/api/v1/rooms', params: valid_attributes }

      it 'creates a new room' do
        expect(response).to have_http_status(:created)
      end
    end

    context 'when the request is invalid' do
      before { post '/api/v1/rooms', params: { room: { name: 'Invalid Room' } } }

      it 'returns a validation failure message' do
        expect(response.body).to match(/User must exist/)
      end
    end
  end
end
