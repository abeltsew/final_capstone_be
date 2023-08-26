require 'swagger_helper'

RSpec.describe 'api/v1/rooms', type: :request do
  before(:each) do
    @user = User.create(username: 'johnd')
    @room = Room.create(name: 'King size', user: @user, price: 456, description: 'King size', image: 'http://')
  end
  path '/api/v1/rooms' do
    get('list rooms') do
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/api/v1/rooms' do
    post('create room') do
      consumes 'application/json'
      produces 'application/json'
      let(:room) { @room }
      parameter name: :room, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string },
          price: { type: :number },
          image: { type: :string },
          user_id: { type: :integer }
        },
        required: %w[name description price user_id]
      }

      response(201, 'successful') do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 name: { type: :string },
                 description: { type: :string },
                 price: { type: :string },
                 image: { type: :string },
                 user_id: { type: :integer },
                 created_at: { type: :string, format: 'date-time' },
                 updated_at: { type: :string, format: 'date-time' }
               },
               required: %w[id name description price user_id]

        run_test!
      end
    end
  end

  path '/api/v1/rooms/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show room') do
      response(200, 'successful') do
        let(:id) { @room.id }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
