require 'rails_helper'

RSpec.describe Room, type: :model do
  before(:each) do
    @user = User.create(username: 'user 1')
  end
  subject do
    Room.new(name: 'Room 1', description: 'Desc 1', price: 10, active: true, image: 'image', user_id: @user.id)
  end

  before { subject.save }

  it 'should not save invalid room' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should not save invlaid room' do
    subject.image = nil
    expect(subject).to_not be_valid
  end
  it 'should not save invlaid room' do
    subject.description = nil
    expect(subject).to_not be_valid
  end
  it 'should not save invlaid room' do
    subject.price = nil
    expect(subject).to_not be_valid
  end
  it 'should not save invlaid room' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
  it 'should save valid room' do
    expect(subject).to be_valid
  end
end
