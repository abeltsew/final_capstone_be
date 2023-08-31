class Api::V1::UsersController < ApplicationController
  def start
    return unless request.content_type == 'application/json'
    return unless request['message'] == 'start'

    msg = { message: 'welcome' }
    render json: msg, status: :ok
  end

  def new_session
    return unless request.content_type == 'application/json'

    user = User.where(username: request['username'])
    if user.empty?
      new_user = User.create!(user_params)
      msg = {
        id: new_user.id,
        username: new_user.username,
        message: 'user created'
      }
    else
      msg = {
        id: user[0].id,
        username: user[0].username,
        message: 'success'
      }
    end
    render json: msg, status: :ok
  end

  def user_params
    params.require(:user).permit(:username)
  end
end
