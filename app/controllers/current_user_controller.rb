# frozen_string_literal: true

class CurrentUserController < ApplicationController

  def index
    render json: UserSerializer.new(current_user), status: :ok
  end
end
