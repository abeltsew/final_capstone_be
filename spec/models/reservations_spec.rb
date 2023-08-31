require 'rails_helper'

RSpec.describe Reservation, type: :model do
  before(:each) do
    @user = User.create(username: 'johnd')
    @room = Room.create(name: 'King size', user_id: @user.id, price: 456, description: 'King size', image: 'http://')
    @city = City.create(name: 'London')
  end
  subject do
    Reservation.new(room_id: @room.id, user_id: @user.id, date: Date.today, city_id: @city.id)
  end

  before { subject.save }

  it 'should not save invalid reservation' do
    subject.room_id = nil
    expect(subject).to_not be_valid
  end

  it 'should not save invalid reservation' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
  it 'should not save invalid reservation' do
    subject.date = nil
    expect(subject).to_not be_valid
  end
  it 'should not save invalid reservation' do
    subject.city_id = nil
    expect(subject).to_not be_valid
  end
  it 'should save invalid reservation' do
    expect(subject).to be_valid
  end
end
