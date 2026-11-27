
class GreetingsController < ApplicationController
  def hello
    render json: { message: 'Hello World' }, status: :ok
  end
end
