require 'rails_helper'

RSpec.describe "Rooms", type: :request do

  before(:each) do
    @user = User.create(username: "johnd")
    @room = Room.create(name: "King size", user: @user, price: 456)

  end

  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/rooms/"
      expect(response).to have_http_status(:success)
      room_data = JSON.parse(response.body)
      expect(room_data[0]['name']).to eq("King size")
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/api/v1/rooms/#{@room.id}"
      expect(response).to have_http_status(:success)
      room_data = JSON.parse(response.body)
      expect(room_data['name']).to eq("King size")
    end
  end

end
