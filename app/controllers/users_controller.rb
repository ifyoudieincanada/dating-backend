class UsersController < ApplicationController
  def list
    users = User.all

    render json: users
  end

  def show
    user = User.find(params[:id])

    render json: user
  end

  def create
    user = User.new(user_params)

    if user.save
      # yay
      render json: user
    else
      # oh no
      render json: user.errors, status: unprocessable_entity
    end
  end

  def update
    user = User.find(params[:id])

    if user.update(user_params)
      # yay
      render json: user
    else
      # oh no
      render json: user.errors, status: :unprocessable_entity
    end
  end

  def delete
    user = User.find(params[:id])
    user.destroy

    head :no_content
  end

  private

  def user_params
    user_data = params.require(:user)
                      .permit(:name,
                              :paypal_tbd,
                              :long,
                              :lat,
                              :interested_in,
                              :gender,
                              :bio,
                              :avatar)

    user_data[:paypal_info] = {
      some_thing: "whatever",
      tbd: "lmao"
    }

    user_data
  end
end
