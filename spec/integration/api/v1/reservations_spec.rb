require 'swagger_helper'

RSpec.describe 'api/v1/reservations', type: :request do
  before(:each) do
    @user = User.create(username: 'johnd')
    @room = Room.create(name: 'King size', user_id: @user.id, price: 456, description: 'King size', image: 'http://')
    @city = City.create(name: 'London')
    @reservation = Reservation.create(room_id: @room.id, user_id: @user.id, date: Date.today, city_id: @city.id)
  end

  path '/api/v1/reservations' do
    get('list reservations') do
      parameter name: 'user_id', in: :path, type: :integer, required: true
      let(:user_id) { User.create(username: 'johnd') }
      response(200, 'successful') do
        schema type: :array,
               items: {
                 type: :object,
                 properties: {
                   date: { type: :date },
                   user_id: { type: :integer },
                   room_id: { type: :integer },
                   city_id: { type: :integer },
                   created_at: { type: :string, format: 'date-time' },
                   updated_at: { type: :string, format: 'date-time' }
                 },
                 required: %w[city_id room_id date user_id]
               }
        it('should return success') do
          user_id = @user.id
          get '/api/v1/reservations', params: { user_id: }
          expect(response).to have_http_status(:success)
        end
        run_test!
      end
    end
  end

  path '/api/v1/reservations' do
    post('create reservation') do
      consumes 'application/json'
      produces 'application/json'
      let(:reservation) { @reservation }
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          date: { type: :string },
          city_id: { type: :integer },
          room_id: { type: :integer },
          user_id: { type: :integer }
        },
        required: %w[city_id room_id date user_id]
      }
      response(201, 'successful') do
        schema type: :object,
               properties: {
                 date: { type: :date },
                 user_id: { type: :integer },
                 room_id: { type: :integer },
                 city_id: { type: :integer },
                 created_at: { type: :string, format: 'date-time' },
                 updated_at: { type: :string, format: 'date-time' }
               },
               required: %w[city_id room_id date user_id]

        run_test!
      end
    end
  end
end
